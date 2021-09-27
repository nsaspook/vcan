#include "../pmodbus.h"
#include "PetitModbus.h"
#include "PetitModbusPort.h"
#include "tests.h"

// This port file for PIC microcontrollers!

// Modbus RTU Variables
volatile unsigned char PetitReceiveBuffer[PETITMODBUS_RECEIVE_BUFFER_SIZE]; // Buffer to collect data from hardware
volatile unsigned char PetitReceiveCounter = 0; // Collected data number

// UART Initialize for Microconrollers, yes you can use another phsycal layer!

void PetitModBus_UART_Initialise(void)
{
}

// Timer Initialize for Petit Modbus, 1ms Timer will be good for us!

void PetitModBus_TIMER_Initialise(void)
{
}

// This is used for send one character

void PetitModBus_UART_Putch(unsigned char c)
{
	//	while (UART6_WriteIsBusy());
	UART6_Write(&c, 1);
	V.modbus_tx++;
}

// This is used for send string, better to use DMA for it ;)

unsigned char PetitModBus_UART_String(unsigned char *s, unsigned int Length)
{
	unsigned short DummyCounter;

	DERE_Set(); // enable modbus transmitter
	delay_ms(10);
	for (DummyCounter = 0; DummyCounter < Length; DummyCounter++) {
		PetitModBus_UART_Putch(s[DummyCounter]);
	}

	while (UART6_WriteCountGet()) {
	};
	delay_ms(10);
	DERE_Clear(); // enable modbus receiver

	return TRUE;
}

/*************************Interrupt Fonction Slave*****************************/
// Call this function into your UART Interrupt. Collect data from it!
// Better to use DMA

void ReceiveInterrupt(unsigned char Data)
{
	PetitReceiveBuffer[PetitReceiveCounter] = Data;
	PetitReceiveCounter++;

	if (PetitReceiveCounter > PETITMODBUS_RECEIVE_BUFFER_SIZE)
		PetitReceiveCounter = 0;

	PetitModbusTimerValue = 0;
	V.modbus_rx++;
}

// Call this function into 1ms Interrupt or Event!

void PetitModBus_TimerValues(void)
{
	PetitModbusTimerValue++;
}
/******************************************************************************/
