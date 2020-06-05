
#include <proc/p32mk1024mcf100.h>
#include "m35qei.h"
#include <xc.h>
#include <stdio.h>

QEI_DATA m35_1, m35_2, *m35_ptr;
qei_ptr_type *qei_ptr = (void*) &QEI1CON;


