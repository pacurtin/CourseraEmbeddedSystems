/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file main.c
 * @brief Main entry point to the C1M4 Assessment
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
//#include "course1.h"
#include <stdio.h>
#include "stats.h"

/* Simple one line main. To run tests use -DCOURSE1 compile time switch */
int main(void) {

  #ifdef COURSE1
	printf("-DCOURSE1 flag set\n");
	unsigned char test[9] = {34, 201, 190, 154, 8, 194, 2, 6, 114};
	print_array(test,9);
	//course1();
  #endif

	printf("Main finished. Exiting.\n");
  return 0;
}

