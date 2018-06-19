/*
 * pwm_led.c
 *
 *  Created on: Apr 29, 2018
 *      Author: David
 */

#include <MKL25Z4.h>
#include <pwm.h>

void PWM_Motors_Init(){
	/*
		* X:PWMA - PTB0
		* Y:PWMA - PTB1
		* X:PWMB - PTB2
		* Y:PWMB - PTB3
		* AIN2(A&B) - PTC2
		* AIN1(A&B) - PTE29 (PTC1 is not properly soldered)
		* STBY(A&B) - PTE20
		* BIN1(A&B) - PTE21
		* BIN2(A&B) - PTE22
		*/
	
	/*Init Pins*/
	SIM_SCGC5 |= SIM_SCGC5_PORTB_MASK;
	SIM_SCGC5 |= SIM_SCGC5_PORTE_MASK;
	SIM_SCGC5 |= SIM_SCGC5_PORTC_MASK;
	PORTB_PCR0 |= PORT_PCR_MUX(3); //PWM TPM1 CH0
	PORTB_PCR1 |= PORT_PCR_MUX(3); //PWM TPM1 CH1
	PORTB_PCR2 |= PORT_PCR_MUX(3); //PWM TPM2 CH0
	PORTB_PCR3 |= PORT_PCR_MUX(3); //PWM TPM2 CH1
	PORTC_PCR2 |= PORT_PCR_MUX(1);//GPIO
	PORTE_PCR29 |= PORT_PCR_MUX(1);//GPIO
	PORTE_PCR20 |= PORT_PCR_MUX(1);//GPIO
	PORTE_PCR21 |= PORT_PCR_MUX(1);//GPIO
	PORTE_PCR22 |= PORT_PCR_MUX(1);//GPIO
	
	/*Init PWM signals*/
	/*Enable clock con TPM0/2*/
	SIM_SCGC6 |= SIM_SCGC6_TPM1_MASK;
	SIM_SCGC6 |= SIM_SCGC6_TPM2_MASK;
	/*Select clock source*/
	SIM_SOPT2 |= 0x01 << SIM_SOPT2_TPMSRC_SHIFT; //MCGFLLCLK clock
	/*Disable TPM while configuring it*/
	TPM1_SC = TPM_SC_CMOD(0);
	TPM2_SC = TPM_SC_CMOD(0);
	/*TPM Modulo Register */
	TPM1_MOD = 8000; 
	TPM2_MOD = 8000; 
	/*Divide Clock by 2^n*/
	TPM1_SC |= TPM_SC_PS(0);
	TPM2_SC |= TPM_SC_PS(0);
	/*OC toogle mode*/
	TPM1_C0SC = TPM_CnSC_MSB_MASK | TPM_CnSC_ELSB_MASK; //PWM and Make signal low on match
	TPM1_C1SC = TPM_CnSC_MSB_MASK | TPM_CnSC_ELSB_MASK; //PWM and Make signal low on match
	TPM2_C0SC = TPM_CnSC_MSB_MASK | TPM_CnSC_ELSB_MASK; //PWM and Make signal low on match
	TPM2_C1SC = TPM_CnSC_MSB_MASK | TPM_CnSC_ELSB_MASK; //PWM and Make signal low on match
	/*schedule next transition*/
	TPM1_C0V = 0; //Duty Cycle XA
	TPM1_C1V = 0; //Duty Cycle YA
	TPM2_C0V = 0; //Duty Cycle XB
	TPM2_C1V = 0; //Duty Cycle YB
	/*Enable timer mode*/
	TPM1_SC |= TPM_SC_CMOD(1);
	TPM2_SC |= TPM_SC_CMOD(1);
	
	/*Set GPIO signals as Outputs*/
	GPIOC_PDDR |= 1<<2;
	GPIOE_PDDR |= (1<< 29 | 1<<20 | 1<<21 | 1<<22);
	
	/*Set STBY AIN1 BIN1 as HIGH and AIN2 BIN2 as LOW*/
	GPIOE_PDOR |= (1<<29); //AIN1 HIGH
	GPIOE_PDOR |= (1<<21); //BIN1 HIGH
	GPIOE_PDOR |= (1<<20); //STBY HIGH
	
	
	
}

void PWM_Motor_Duty_Cycle(float xA, float xB, float yA, float yB, float h){
	TPM1_C0V = xA+h;
	TPM1_C1V = yA+h;
	TPM2_C0V = xB+h;
	TPM2_C1V = yB+h;
	
}

void PWM_LED_Duty_Cycle(float axis){
	short negative_flag = 0;
	if(axis <0){
		axis = -axis;
		negative_flag = 1;
	}
	if(axis>1)axis=1;
	
	if(negative_flag){
		TPM2_C0V = TPM2_MOD;
		TPM2_C1V = TPM2_MOD*(1-axis);
	}else{
		TPM2_C0V = TPM2_MOD*(1-axis);
		TPM2_C1V = TPM2_MOD;
	}
}


