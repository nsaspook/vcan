#ifndef TIC12400_H    /* Guard against multiple inclusion */
#define TIC12400_H

#include "vcan.h"
#include "dio.h"

#define poll_mask	0b10000000000

typedef struct __attribute__((packed))
{
	uint32_t par : 1;
	uint32_t data : 24;
	uint32_t addr : 6;
	uint32_t wr : 1;
}
ticbuf_type;

typedef struct __attribute__((packed))
{
	uint32_t par : 1;
	uint32_t data : 24;
	uint32_t oi : 1;
	uint32_t temp : 1;
	uint32_t vs_th : 1;
	uint32_t ssc : 1;
	uint32_t parity_fail : 1;
	uint32_t spi_fail : 1;
	uint32_t por : 1;
}
ticread_type;

void tic12400_reset(void);
bool tic12400_init(void);
uint32_t tic12400_wr(ticbuf_type *);
uint32_t tic12400_get_sw(void);

extern uint32_t tic12400_status;
extern uint32_t tic12400_value;

extern ticread_type *ticstatus;

/* Provide C++ Compatibility */
#ifdef __cplusplus
extern "C" {
#endif


	/* Provide C++ Compatibility */
#ifdef __cplusplus
}
#endif

#endif /* TIC12400_H */

/* *****************************************************************************
 End of File
 */
