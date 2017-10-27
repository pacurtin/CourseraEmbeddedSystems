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
//#define SIZE (40)
//#define SIZE (9)

/*unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};*/

  //unsigned char test[SIZE] = {34, 201, 190, 154, 8, 194, 2, 6, 114};

void print_array(unsigned char *array, int arrayLenght){
	#ifdef VERBOSE
		printf("Array Elements:\n");
		for(int i=0;i<arrayLenght;i++){
			printf("%hu",array[i]);
			if(i!=arrayLenght-1){	//Dont want a comma at end of print out.
				printf(", ");
			}
		}
		printf("\n\n");
	#endif
}
//Comparisson function used for quicksort algorithm
int compare_chars (const void *a, const void *b)
{
  const unsigned char *ca = (const unsigned char *) a;
  const unsigned char *cb = (const unsigned char *) b;
  return (*ca > *cb) - (*ca < *cb);
}

void sort_array(unsigned char *array, int arrayLenght){
	printf("Sorted ");
	qsort (array, arrayLenght, sizeof (unsigned char), compare_chars);
}

unsigned char find_mean(unsigned char *array, int arrayLenght){
	printf("Calculating mean...\n");
	int total=0;
	unsigned char mean = 0;
	for(int i=0;i<arrayLenght;i++){
		total=total+array[i];
	}
	mean = total/arrayLenght;
	printf("Mean = %d\n\n", mean);
	return mean;
}

unsigned char find_median(unsigned char *array, int arrayLenght){
		printf("Calculating median...\n");
		unsigned char median = 0;
		sort_array(array,arrayLenght);
		
		if(arrayLenght%2==0){	//even length array
			median = (array[arrayLenght/2]+array[(arrayLenght/2)+1])/2; //mean of the middle two numbers.
		}else{	//odd length array
			median = array[arrayLenght/2];	//middle number of sorted array.
		}
		
		printf("Median = %d\n\n",median);
		return median;
}

unsigned char find_maximum(unsigned char *array, int arrayLenght){
	printf("Calculating maximum...\n");
	unsigned char max = 0;
	sort_array(array,arrayLenght);
	max = array[arrayLenght-1];
	printf("Maximum = %d\n\n", max);
	return max;
}

unsigned char find_minimum(unsigned char *array, int arrayLenght){
	printf("Calculating minimum...\n");
	unsigned char min = 0;
	sort_array(array,arrayLenght);
	min = array[0];
	printf("Minimum = %d\n\n", min);
	return min;
}




