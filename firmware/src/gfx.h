/* 
 * File:   gfx.h
 * Author: root
 *
 * Created on March 5, 2021, 10:19 AM
 */

#ifndef GFX_H
#define	GFX_H

#ifdef	__cplusplus
extern "C" {
#endif

#include <math.h>
#include "OledGrph.h"

	extern int32_t xa, ya, za;

	void line_rot(uint32_t, uint32_t, uint32_t, uint32_t);
	void vector_graph(void);
	void LA_gfx(bool, bool, uint32_t);

#ifdef	__cplusplus
}
#endif

#endif	/* GFX_H */

