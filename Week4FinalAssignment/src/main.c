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


/* Simple one line main. To run tests use -DCOURSE1 compile time switch */
int main(void) {

  #ifdef COURSE1
    //course1();
    printf("Hello from course 1");
  #endif

	printf("Main ran. Did it say hello?");

  return 0;
}

