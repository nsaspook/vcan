/**
 * @file lcdParallel_createChar.c
 *
 * @author Matthew Matz, Jeff Martin
 *
 * @version 0.5
 *
 * @copyright
 * Copyright (C) Parallax, Inc. 2018. All Rights MIT Licensed.
 *
 * @brief Display driver for character LCD screens based on Hitachi HD44780 
 * (or compatible) chipsets, which are found in most text-based LCDs. 
 * The library works with either 4 or 8 data lines in addition
 * to the rs, and enable lines.
 */


#include "lcdParallel.h"

// Allows us to fill the first 8 CGRAM locations
// with custom characters
void lcdParallel_createChar(lcdParallel *device, char loc, char charmap[]) {
  loc &= 0x7; // we only have 8 locations 0-7
  lcdParallel_send(device, LCDP_SETCGRAMADDR | (loc << 3), LCDP_SEND_COMMAND);
  for (int i=0; i<8; i++) {
    lcdParallel_send(device, charmap[i], LCDP_SEND_WRITE);
  }
}

/**
 * TERMS OF USE: MIT License
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
 * THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 */
