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
 * @file stats.h
 * @brief Char array analytics
 *
 * A class of functions that can analyze an array of unsigned char data items
 * and has the following functionality:
 *
 *	Report minimum, maximum, mean, and median of chars
 *	Print the Array
 *	Sort the array from largest to smallest
 *
 * @author Padraig Curtin
 * @date 10/10/2017
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include "stats.h"

/* Size of the Data Set */
#define SIZE (40)

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  /* Other Variable Declarations Go Here */
  /* Statistics and Printing Functions Go Here */
  print_array(test,SIZE);
  find_median(test,SIZE);
  

}

void print_array(unsigned char *array, int arrayLenght){
	printf("\nArray Elements:\n");
	for(int i=0;i<arrayLenght;i++){
		printf("%hu",array[i]);
		if(i!=arrayLenght-1){	//Dont want a comma at end of print out.
			printf(", ");
		}
	}
	printf("\n");
}

unsigned char find_median(unsigned char *array, int arrayLenght){
		sort_array(array,arrayLenght);
		print_array(array,arrayLenght);
		return 1;
}

//Comparisson function used for quicksort algorithm
int compare_chars (const void *a, const void *b)
{
  const unsigned char *ca = (const unsigned char *) a;
  const unsigned char *cb = (const unsigned char *) b;

  return (*ca > *cb) - (*ca < *cb);
}

unsigned char sort_array(unsigned char *array, int arrayLenght){
	qsort (array, arrayLenght, sizeof (unsigned char), compare_chars);
}




