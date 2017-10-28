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
 * @file memory.c
 * @brief Abstraction of memory read and write operations
 *
 * This implementation file provides an abstraction of reading and
 * writing to memory via function calls. There is also a globally
 * allocated buffer array used for manipulation.
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#include <stdint.h>
#include <stdlib.h>
#include "memory.h"
#include "platform.h"


/***********************************************************
 Function Definitions
***********************************************************/
void set_value(char * ptr, unsigned int index, char value){
  ptr[index] = value;
}

void clear_value(char * ptr, unsigned int index){
  set_value(ptr, index, 0);
}

char get_value(char * ptr, unsigned int index){
  return ptr[index];
}

void set_all(char * ptr, char value, unsigned int size){
  unsigned int i;
  for(i = 0; i < size; i++) {
    set_value(ptr, i, value);
  }
}

void clear_all(char * ptr, unsigned int size){
  set_all(ptr, 0, size);
}


uint32_t * reserve_words(size_t length){
	return malloc(sizeof(uint32_t)*length);
}

void free_words(uint32_t * src){
	free(src);
}

uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length){
	uint8_t *origDst = dst;
	for(int i = 0; i<length; i++){
		*dst= *src;
		src++;
		dst++;
	}
	return origDst;
}

uint8_t *my_memmove(uint8_t * src, uint8_t * dst, size_t length){
	uint8_t *origDst = dst;
	uint8_t tempArray[length]; //need to temporarily store bytes
	for(int i = 0; i<length; i++){
		tempArray[i] = *src;
		src++;
	}

	for(int i = 0; i<length; i++){
		*dst= tempArray[i];
		dst++;
	}
	return origDst;
}

uint8_t * my_memset(uint8_t * src, size_t length, uint8_t value){
	uint8_t *origSrc = src;
	for(int i = 0; i<length; i++){
		*src=value;
		src++;
	}
	return origSrc;
}

uint8_t * my_memzero(uint8_t * src, size_t length){
	uint8_t *origSrc = src;
	for(int i = 0; i<length; i++){
		*src=0;
		src++;
	}
	return origSrc;
}

uint8_t * my_reverse(uint8_t * src, size_t length){

	uint8_t *origSrc = src;
	uint8_t *end = src + (sizeof(uint8_t)*(length-1));	//pointer to last byte

	uint8_t temp = 0;
	for(int i = 0; i<length/2; i++){
		temp=*src;
		*src=*end;
		*end=temp;
		src++;
		end--;
	}
	return origSrc;
}