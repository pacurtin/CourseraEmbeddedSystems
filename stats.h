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
#ifndef __STATS_H__
#define __STATS_H__

/**
 * @brief A function that prints the statistics of an array including minimum, 
 * maximum, mean, and median.
 *
 * @param charArray The array of chars to be analysed
 *
 * @return void
 */
//void print_statistics(unsigned char *array);
 
/**
 * @brief Given an array of data and a length, prints the array to the screen.
 *
 * @param charArray The array of chars to be analysed
 * @param arrayLenght The lenght of the array of chars to be analysed
 *
 * @return void
 */
void print_array(unsigned char *array, int arrayLenght);
 
/**
 * @brief Given an array of data and a length, returns the median value
 *
 * @param charArray The array of chars to be analysed
 * @param arrayLenght The lenght of the array of chars to be analysed
 *
 * @return The median value
 */
unsigned char find_median(unsigned char *array, int arrayLenght);
 
/**
 * @brief Given an array of data and a length, returns the mean value
 *
 * @param charArray The array of chars to be analysed
 * @param arrayLenght The lenght of the array of chars to be analysed
 *
 * @return The mean value
 */
//unsigned char find_mean(unsigned char *array, int arrayLenght);
 
/**
 * @brief Given an array of data and a length, returns the max value
 *
 * @param charArray The array of chars to be analysed
 * @param arrayLenght The lenght of the array of chars to be analysed
 *
 * @return The max value
 */
//unsigned char find_maximum(unsigned char *array, int arrayLenght);
 
/**
 * @brief Given an array of data and a length, returns the min value
 *
 * @param charArray The array of chars to be analysed
 * @param arrayLenght The lenght of the array of chars to be analysed
 *
 * @return The min value
 */
//unsigned char find_minimum(unsigned char *array, int arrayLenght);
 
/**
 * @brief Given an array of data and a length, sorts the array from largest to smallest.
 *
 * @param charArray The array of chars to be sorted
 * @param arrayLenght The lenght of the array of chars to be sorted
 *
 * @return Sorted array
 */
unsigned char sort_array(unsigned char *array, int arrayLenght);

#endif /* __STATS_H__ */