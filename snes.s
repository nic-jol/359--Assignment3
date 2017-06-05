.section	.init
// Probably don't do this when it is a separate file?
.globl		_start

_start:	b	main

.section	.text

main:
	mov	sp, #0x8000
	bl	EnableJTAG
	bl	InitUART


/** Function 6: Read SNES **/
/* Reads input (i.e. which button was pressed) from a SNES controller
 * 	PARAMETERS
 *	(1) Button that was pressed (probably reading from multiple lines? May not even take from parameters if it just automatically checks lines)
 *	RETURNS
 *	(1) r0: Code of button pressed
 */
Read_SNES:





	bx	lr





// Functions for controlling SNES

/** Function 1: Initialize GPIO **/
/* Initializes the specified GPIO line for the SNES (??)
 * 	PARAMETERS	
 *	(1) Line number
 *	(2) Function code (??)
 *	RETURNS: ???
 */
Init_GPIO:




	bx	lr









/** Function 2: Write Latch **/
/* Writes a BIT to the GPIO latch line (?? what is the latch line ??)
 *	PARAMETERS ??
 *	(1) Bit to write to latch line
 *	RETURNS	?? probably nothing
 */
Write_Latch:




	bx	lr






/** Function 3: Write Clock **/
/* Writes a VALUE to the GPIO Clock line (??)
 *	PARAMETERS: ?? 
 *	(1) Value to write to clock line
 *	RETURNS: ?? Nothing if it just writes the value it is providied
 */
Write_Clock:





	bx	lr





/** Function 4: Read Data **/
/* Reads a BIT from the GPIO data line
 *	PARAMETERS: ?? Nothing probably, unless it is specifying which line to read from
 *	RETURNS: 
 *	(1) Bit from GPIO data line
 */
Read_Data:




	bx	lr




/** Function 5: Wait **/
/* Waits for a specified time interval
 *	PARAMETERS
 *	(1) Time interval to wait for
 *	RETURNS: ?? Probably nothing
 */
Wait:






	bx	lr

/** Function 7: Print Message **/
/* Displays the message stored in the address provided
 *	PARAMETERS
 *	(1) Address of message to be printed
 *	RETURNS: nothing
 */
Print_Message:
	





	bx	lr




.section	.data
names:
	.ascii	"Created By: Bruce Moore and Nicole Lefebvre\r\n"	//45 characters

input_prompt:
	.ascii	"Please press a button...\r\n"		// 26 characters

start_pressed:
	.ascii	"Program is terminating...\r\n"		// 27 characters

base_pressed:
	.ascii	"You have pressed "		// 17 characters

b_button:
	.ascii	"B\r\n"		// 3 characters

y_button:
	.ascii	"Y\r\n"		// 3 characters

select_button:
	.ascii	"Select\r\n"	// 3 characters

// Start is only to terminate

up_jp:
	.ascii	"Joy-pad UP\r\n"		// 13 characters

down_jp:
	.ascii	"Joy-pad DOWN\r\n"		// 14 characters

left_jp:
	.ascii	"Joy-pad LEFT\r\n"		// 14 characters

right_jp:
	.ascii	"Joy-pad RIGHT\r\n"		// 15 characters

a_button:
	.ascii	"A\r\n"		// 3 characters

x_button:
	.ascii	"X\r\n"		// 3 characters

left_button:
	.ascii	"Left\r\n"		// 6 characters

right_button:
	.ascii	"Right\r\n"		// 7 characters
