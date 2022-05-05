/* 
 * File:   ph3bd.h
 * Author: root
 *
 * Created on May 5, 2022, 8:17 AM
 */

#ifndef PH3BD_H
#define	PH3BD_H

#ifdef	__cplusplus
extern "C" {
#endif

#include "modbus_master.h"
/*
 * send and receive MODBUS templates
 */
const uint8_t modbus_cc_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x06},
modbus_cc_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x0A, 0x00, 0x02},
i400_mode[] = {MADDR, READ_HOLDING_REGISTERS, 0x00, 0x00, 0x00, 0x00, 0x85, 0x01, 0x03, 0x00, 0x00, 0x00, 0x00, 0x85, 0x00, 0x00, 0x85},
i400_error[] = {MADDR, READ_HOLDING_REGISTERS, 0x04, 0x00, 0x00, 0x00, 0x00, 0x39, 0x85},
i400_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x01, 0x5d, 0xc0},
i400_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x00, 0x00, 0x01, 0x60, 0x00};
/*
 * send variable register commands
 */
uint8_t modbus_cc_clear[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x0A, 0x00, 0x01},
modbus_cc_freset[] = {MADDR, WRITE_SINGLE_REGISTER, 0x00, 0x0B, 0x00, 0x02};

#ifdef	__cplusplus
}
#endif

#endif	/* PH3BD_H */

