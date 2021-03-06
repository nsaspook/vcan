#include "tests.h"

bool run_tests(uint32_t count)
{
	static uint32_t running = 0;

	if (running++ >= count) {
		running = 0;
		spi_tests();
		uart_tests();
		return true;
	}
	return false;
}

bool spi_tests(void)
{
	while (SPI3_IsBusy());
	SPI_EN0_Clear();
	SPI3_Write(" Tests 0", 8);
	SPI_EN0_Set();

	while (SPI3_IsBusy());
	SPI_EN1_Clear();
	SPI3_Write(" Tests 1", 8);
	SPI_EN1_Set();

	return true;
}

bool uart_tests(void)
{

	while (UART2_WriteFreeBufferCountGet() < 10);
	UART2_Write((uint8_t*) " Tests 2", 8);

	while (UART3_WriteFreeBufferCountGet() < 10);
	UART3_Write((uint8_t*) " Tests 3", 8);

	while (UART6_WriteFreeBufferCountGet() < 10);
	UART6_Write((uint8_t*) " Tests 6", 8);

	return true;
}
