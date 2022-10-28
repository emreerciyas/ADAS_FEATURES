/* ###*B*###
 * Erika Enterprise, version 3
 *
 * Copyright (C) 2017 - 2018 Evidence s.r.l.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or (at
 * your option) any later version.
 *
 * This program is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
 * General Public License, version 2, for more details.
 *
 * You should have received a copy of the GNU General Public License,
 * version 2, along with this program; if not, see
 * < www.gnu.org/licenses/old-licenses/gpl-2.0.html >.
 *
 * This program is distributed to you subject to the following
 * clarifications and special exceptions to the GNU General Public
 * License, version 2.
 *
 * THIRD PARTIES' MATERIALS
 *
 * Certain materials included in this library are provided by third
 * parties under licenses other than the GNU General Public License. You
 * may only use, copy, link to, modify and redistribute this library
 * following the terms of license indicated below for third parties'
 * materials.
 *
 * In case you make modified versions of this library which still include
 * said third parties' materials, you are obligated to grant this special
 * exception.
 *
 * The complete list of Third party materials allowed with ERIKA
 * Enterprise version 3, together with the terms and conditions of each
 * license, is present in the file THIRDPARTY.TXT in the root of the
 * project.
 * ###*E*### */

/** \file	istexit.h
 *  \brief	Test: ISTEXIT
 *
 *  Measure the time between when a task handling an interrupt terminates and
 *  the previously executing task resumes.
 *
 *  \author	Errico Guidieri
 *  \date	2018
 */
#ifndef __ISTEXIT_H__
#define __ISTEXIT_H__

#include "../hal.h"
#include "../test.h"

static void istexit_setup(struct test *data)
{
	DemoHAL_ISRDisable();
}

static void istexit_main(struct test *data)
{
  	int i;

  	for (i = 1; i <= PERF_LOOPS; i++) {
		DemoHAL_ISRTrigger(DEMO_HAL_ISR_4);
  		perf_stop_measure(curdata, i);
  	}
}

static void istexit_task1(struct test *data)
{
}

static void istexit_task3(struct test *data)
{
  	perf_start_measure();
}

static void istexit_task4(struct test *data)
{
}

static void istexit_cleanup(struct test *data)
{
	perf_finalize(data);
}

#endif /* __ISTEXIT_H__ */
