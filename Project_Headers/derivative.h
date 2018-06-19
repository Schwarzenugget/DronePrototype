/*
 * Note: This file is recreated by the project wizard whenever the MCU is
 *       changed and should not be edited by hand
 */

/* Include the derivative-specific header file */
#include <MKL25Z4.h>

/******************************************************************************
* Data
******************************************************************************/
typedef struct Axis2D{
	float X;
	float Y;
}Axis2D;

typedef struct Motors{
	float XA;
	float XB;
	float YA;
	float YB;
}Motors;

char PrintReady;

/******************************************************************************
* Functions
******************************************************************************/

void Measure_Distance(void);
void SysTick_Init(void);
