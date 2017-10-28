/**
 * @file data.h
 * @brief Ascii to integer and back conversion functions
 *
 * @author Padraig Curtin
 * @date Oct 28 2017
 *
 */
#ifndef __DATA_H__
#define __DATA_H__

/**
* @brief Convert data from a standard integer type into an ASCII string
*
* Places a null terminator at the end of the converted c-string
* Returns the length of the converted data (including a negative sign). Example my_itoa(ptr, 1234, 10) should return an ASCII string length of 5 (including the null terminator).
* Function handles signed data.
*
* @param data Number you wish to convert is passed in as a signed 32-bit integer
* @param ptr Copies the converted character string to the uint8_t* pointer
* @param base Supports bases 2 to 16 by specifying the integer value of the base you wish to convert to
*
* @return ptr to ascii char value
*/
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);

/**
* @brief Convert data back from an ASCII represented string into an integer type
*
* @param ptr Character string to convert
* @param digits Number of digits in your character set
* @param base Can support bases 2 to 16
*
* @return 32-bit signed integer converted value
*/
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);

#endif /* __DATA_H__ */
