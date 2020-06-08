/* 
 * File:   m35qei.h
 * Author: root
 *
 * Created on July 8, 2018, 1:58 PM
 */

#ifndef M35QEI_H
#define	M35QEI_H

#ifdef	__cplusplus
extern "C" {
#endif

	/*
	 * QEI #1 pin connections
	 * 
	 * QEA1 RPA0
	 * QEB1 RPA14
	 * INDX1 RPB6
	 * HOME1 RPB9
	 * 
	 * QEI #2 pin connections
	 * 
	 * QEA2 RPC10
	 * QEB2 RPC1
	 * INDX2 RPB1
	 * HOME2 RPG6
	 */

	/*
	 * encoder device data
	 */
	typedef struct {
		int32_t pos, vel;
		uint32_t update;
	} QEI_DATA;

#ifdef	__cplusplus
}
#endif

#endif	/* M35QEI_H */

