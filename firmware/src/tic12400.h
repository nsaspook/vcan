#ifndef TIC12400_H    /* Guard against multiple inclusion */
#define TIC12400_H

#include "vcan.h"
#include "dio.h"

typedef struct {
	uint32_t par : 1;
	uint32_t data : 24;
	uint32_t addr : 6;
	uint32_t wr : 1;
} ticbuf_type;

bool tic12400_init(void);
uint32_t tic12400_wr(ticbuf_type *);
uint32_t tic12400_get_sw(void);

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
