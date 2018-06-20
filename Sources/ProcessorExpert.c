/* Including needed modules to compile this module/procedure */
#include "global.h"
#include <MKL25Z4.h>
#include "Cpu.h"
#include "Events.h"
#include "WAIT1.h"
#include "TRIG.h"
#include "LEDR.h"
#include "LEDpin1.h"
#include "BitIoLdd1.h"
#include "LEDG.h"
#include "LEDpin2.h"
#include "BitIoLdd2.h"
#include "Acc.h"
#include "ExtIntLdd1.h"
#include "ST1.h"
#include "LEDB.h"
#include "LEDpin3.h"
#include "BitIoLdd3.h"
#include "TU1.h"
#include "MCUC1.h"
#include "UTIL1.h"

/* Including shared modules, which are used for whole project */
#include "PE_Types.h"
#include "PE_Error.h"
#include "PE_Const.h"
#include "IO_Map.h"

/* User includes (#include below this line is not maintained by Processor Expert) */
#include "Ultrasonic.h"
#include "ConsoleIO.h"
#include "derivative.h" /* include peripheral declarations */

#include "pwm.h"
#include "PID.h"
#include "acc.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

/******************************************************************************
* Pin assigment MKL25Z128
******************************************************************************/

/*
	* MOTORS
	* Y:PWMA - PTB0
	* Y:PWMB - PTB1
	* X:PWMA - PTB2
	* X:PWMB - PTB3
	* AIN1 - PTC2
	* AIN2 - PTE29
	* STBY - PTE20
	* BIN1 - PTE21
	* BIN2 - PTE22
	* 
	* ACCELEROMETER
	* PTA14 - Interrupt Acc
	* PTE24 - I2C Acc
	* PTE25 - I2C Acc
	* 
	* LED
	* PTB18 - Red LED
	* PTB19 - Green LED
	* PTD1 - Blue LED
	* 
	* PRINTF
	* PTA1 - UART 
	* PTA2 - UART
	* 
	* ULTRASONIC SENSOR
	* PTA12 - TRIGGER 
	* PTD4 - ECHO
	*/

Axis2D Input_g; 
Axis2D Target_g = {0.0,0.0};
Motors Output_pwm;
PID XaxisA, XaxisB, YaxisA, YaxisB;

uint16_t cm;
uint16_t cm_to_pwm = 2000/400;



void Measure_Distance(void) {
  uint16_t us;

  us = US_Measure_us();
  //printf("Distancia en us: %u\r\n", us);

  cm = US_usToCentimeters(us, 22);
  //printf("Distancia en cm: %u\r\n", cm);
  
  LEDR_Put(cm<10); /* red LED if object closer than 10 cm */
  LEDB_Put(cm>=10&&cm<=100); /* blue LED if object is in 10..100 cm range */
  LEDG_Put(cm>100); /* green LED if farther than 100 cm */

}


int main(void)
{
  /*** Processor Expert internal initialization. DON'T REMOVE THIS CODE!!! ***/
  PE_low_level_init();
  /*** End of Processor Expert internal initialization.                    ***/

  /* Write your code here */
	/**************
	* Accelerometer Init
	***************/
	AccReady = 0;
	MCU_Init();
	Accelerometer_Init();
	Calibrate();  
	
	/**************
	* PWM Init
	**************/
	PWM_Motors_Init();
	
	/**************
	* Ultrasonic sensor
	**************/
	US_Init();
	
	/**************
	* Serial Communication Init
	***************/
	PrintReady = 0;
	int count = 0;
	ConsoleIO_Init();
	//SysTick_Init();
	
	/**************
	PID init
	**************/
	/*Specify initial tuning parameters*/
	float Kp=8000, Ki=0, Kd=0; //0,2000,400
	/* Init Axis Y PID*/
	PID_Init(&XaxisA, &Input_g.X, &Output_pwm.XA, &Target_g.X, Kp, Ki, Kd, P_ON_E,REVERSE);
	PID_Init(&YaxisA, &Input_g.Y, &Output_pwm.YA, &Target_g.Y, Kp, Ki, Kd, P_ON_E,DIRECT);
	PID_Init(&XaxisB, &Input_g.X, &Output_pwm.XB, &Target_g.X, Kp, Ki, Kd, P_ON_E,DIRECT);
	PID_Init(&YaxisB, &Input_g.Y, &Output_pwm.YB, &Target_g.Y, Kp, Ki, Kd, P_ON_E,REVERSE);
	
	while(!AccReady){}; //Read Accelerometer to init PID
	AccReadValues(&Input_g.X, &Input_g.Y);
	AccReady = 0;
	
	/*Turn On PID*/
	PID_SetMode(&XaxisA, AUTOMATIC);
	PID_SetMode(&XaxisB, AUTOMATIC);
	PID_SetMode(&YaxisA, AUTOMATIC);
	PID_SetMode(&YaxisB, AUTOMATIC);
	
	
	while(1)
  {

		if (AccReady)		// Is a new set of data ready? 
		{  		
			AccReady = 0;
																	
			AccReadValues(&Input_g.X, &Input_g.Y);
			Measure_Distance();

			PID_Compute(&XaxisA); //PID computing
			PID_Compute(&YaxisA); //PID computing
			PID_Compute(&XaxisB);
			PID_Compute(&YaxisB);

			PWM_Motor_Duty_Cycle(Output_pwm.YA, Output_pwm.XA, Output_pwm.YB, Output_pwm.XB, 0);
			//PWM_Motor_Duty_Cycle(0, 0, 0, 0, (400-cm)*cm_to_pwm*0);
						
		} 
		if (PrintReady){
			PrintReady = 0;
			count++;
			printf("%d,%.6f,%.6f, %u\r\n", count, Input_g.X, Input_g.Y, cm);
			
		}
		
	}


  /*** Don't write any code pass this line, or it will be deleted during code generation. ***/
  /*** RTOS startup code. Macro PEX_RTOS_START is defined by the RTOS component. DON'T MODIFY THIS CODE!!! ***/
  #ifdef PEX_RTOS_START
    PEX_RTOS_START();                  /* Startup of the selected RTOS. Macro is defined by the RTOS component. */
  #endif
  /*** End of RTOS startup code.  ***/
  /*** Processor Expert end of main routine. DON'T MODIFY THIS CODE!!! ***/
  for(;;){}
  /*** Processor Expert end of main routine. DON'T WRITE CODE BELOW!!! ***/
} /*** End of main routine. DO NOT MODIFY THIS TEXT!!! ***/


#if 0
/******************
 * PRINTF INTERRUPT
 *****************/

void SysTick_Init(){
	
	SYST_CSR = 0x1; //Enable Timer
	SYST_CSR |= 0 << SysTick_CSR_CLKSOURCE_SHIFT; //System clock when 1, divided by 16 when 0
	SYST_CSR |= 0x1 << SysTick_CSR_TICKINT_SHIFT; //Enable Interruptions
	SYST_RVR = 419400; //Timer start value
}


/*sing PE_ISR(Cpu_ivINT_SysTick) instead*/
void SysTick_Handler(void){
	PrintReady = 1;
}
#endif


