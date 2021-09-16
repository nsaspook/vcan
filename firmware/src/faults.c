#include "faults.h"

bool check_fault(void)
{
	if (V.fault_active) {
		return true;
	} else {
		return false;
	}
}

void set_fault(uint32_t status, uintptr_t context)
{
	/*
	 * clear enable flags to see if we can clear the inverter driver error(s) later
	 */
	V.fault_ticks = 0;
	V.fault_count++;
	V.fault_active = true;
}
void clear_fault_flag(void)
{
	V.fault_active = false;
}