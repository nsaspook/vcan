/* 
 * File:   faults.h
 * Author: root
 *
 * Created on September 15, 2021, 5:36 PM
 */

#ifndef FAULTS_H
#define	FAULTS_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "vcan.h"

	extern volatile struct V_type V;
	bool check_fault(void);
	void set_fault(uint32_t status, uintptr_t context);
	void clear_fault_flag(void);

#ifdef	__cplusplus
}
#endif

#endif	/* FAULTS_H */

