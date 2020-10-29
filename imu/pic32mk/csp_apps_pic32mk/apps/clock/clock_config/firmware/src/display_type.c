#include "display_type.h"
#include "dogm-graphic.h"

#ifdef USE_DMA
static uint8_t __attribute__((coherent)) cbuf[4];
#endif

void RS_SetLow(void)
{
	RS_Clear(); // display board SPI_EN0
};

void RS_SetHigh(void)
{
	RS_Set();
};

void CSB_SetLow(void)
{
	CSB_Clear(); // display board SPI_EN1
};

void CSB_SetHigh(void)
{
	CSB_Set();
};

void SPI_Exchange8bit(uint8_t data)
{
#ifdef USE_DMA
	while (DMAC_ChannelIsBusy(DMAC_CHANNEL_0));
	cbuf[0] = data;
	DMAC_ChannelTransfer(DMAC_CHANNEL_0, cbuf, 1, (void*) &SPI1BUF, 1, 1);
#else
	while (SPI1_IsBusy());
	SPI1_Write(&data, 1);
#endif

};

void SPI_ExchangeBuffer(uint8_t *data, uint16_t len)
{
	SPI1_Write(data, len);
};

uint16_t SPI_to_Buffer(uint8_t *dataIn, uint16_t bufLen, uint8_t *dataOut)
{
	uint16_t bytesWritten = 0;

#ifdef USE_DMA
	/*
	 * todo
	 */
	while (DMAC_ChannelIsBusy(DMAC_CHANNEL_0));
	LCD_UNSELECT();
	bytesWritten = bufLen;
	LCD_SELECT();
	LCD_DRAM();
	if (bufLen != 0) {
		DMAC_ChannelTransfer(DMAC_CHANNEL_0, (void*) dataIn, bufLen, (void*) &SPI1BUF, 1, 1);
	}
	return bytesWritten;
#else
	while (SPI1_IsBusy());
	LCD_SELECT();
	LCD_DRAM();
	if (bufLen != 0) {
#ifdef EDOGS
		SPI_ExchangeBuffer(dataIn, bufLen);
		bytesWritten = bufLen;
#endif
#ifdef EDOGM
		if (dataIn != NULL) {
			while (bytesWritten < bufLen) {
				if (dataOut == NULL) {
					SPI_Exchange8bit(dataIn[bytesWritten]);
				} else {
					SPI_Exchange8bit(dataIn[bytesWritten]);
				}
				lcd_inc_column(1);
				bytesWritten++;
			}
		} else {
			if (dataOut != NULL) {
				while (bytesWritten < bufLen) {
					SPI_Exchange8bit(0xff);
					lcd_inc_column(1);
					bytesWritten++;
				}
			}
		}
#endif
	}
	LCD_UNSELECT();
	return bytesWritten;
#endif
}

void wait_lcd_done(void)
{
#ifdef USE_DMA
	LCD_UNSELECT();
#else
	while (SPI1_IsBusy());
#endif
}