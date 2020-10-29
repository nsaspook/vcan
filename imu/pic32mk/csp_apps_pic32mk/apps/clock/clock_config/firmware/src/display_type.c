#include "display_type.h"
#include "dogm-graphic.h"

#ifdef USE_DMA
static uint8_t __attribute__((coherent)) cbuf[16];
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

void SPI1DmaChannelHandler(DMAC_TRANSFER_EVENT event, uintptr_t contextHandle)
{
	if (event == DMAC_TRANSFER_EVENT_COMPLETE) {
		LCD_UNSELECT();
	}
}

void SPI_Exchange8bit(uint8_t data)
{
#ifdef USE_INT
	while (SPI1_IsBusy());
#endif
#ifdef USE_DMA
	while (DMAC_ChannelIsBusy(DMAC_CHANNEL_7));
#endif
	SPI1_Write(&data, 1);
};

void SPI_ExchangeBuffer(uint8_t *data, uint16_t len)
{
#ifdef USE_INT
	while (SPI1_IsBusy());
#endif
#ifdef USE_DMA
	while (DMAC_ChannelIsBusy(DMAC_CHANNEL_7));
#endif
	SPI1_Write(data, len);
};

uint16_t SPI_to_Buffer(uint8_t *dataIn, uint16_t bufLen, uint8_t *dataOut)
{
	uint16_t bytesWritten = 0;

#ifdef USE_DMA
	/*
	 * todo
	 */
	while (DMAC_ChannelIsBusy(DMAC_CHANNEL_7));
	//		DMAC_Initialize();
	SPI1CONbits.ON = 0;
	SPI1CONbits.SRXISEL = 3;
	SPI1CONbits.STXISEL = 0;
	SPI1CON2bits.IGNROV = 1;
	SPI1CON2bits.SPIROVEN = 0;
	SPI1CONbits.ON = 1;
	SPI1CONbits.ENHBUF = 1;
	DMAC_ChannelCallbackRegister(DMAC_CHANNEL_7, SPI1DmaChannelHandler, 0);
	cbuf[0] = 0xf0;
	cbuf[1] = 0x0f;
	bytesWritten = bufLen;
	LCD_SELECT();
	LCD_DRAM();
	if (bufLen != 0) {
		DMAC_ChannelTransfer(DMAC_CHANNEL_7, (const void *) cbuf, (size_t) 1, (const void*) &SPI1BUF, (size_t) 1, (size_t) 1);
	}
	return bytesWritten;
#else
#ifdef USE_INT
	while (SPI1_IsBusy());
#endif

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
	while (DMAC_ChannelIsBusy(DMAC_CHANNEL_0));
	LCD_UNSELECT();
#else
#ifdef USE_INT
	while (SPI1_IsBusy());
#endif
#endif
}