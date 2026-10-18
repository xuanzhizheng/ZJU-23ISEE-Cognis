#define SegEn_ADDR  0x80001038
#define SegDig_ADDR 0x8000103c

#define RPTC_CNTR   0x80001200
#define RPTC_HRC    0x80001204
#define RPTC_LRC    0x80001208
#define RPTC_CTRL   0x8000120c


.globl main
main:

add sp, sp, -16
sw s1, 0(sp)
sw ra, 4(sp)


##################################
# Enable the 7SegDisplays
##################################
li t1, SegEn_ADDR
li t2, 0x24
sb t2, 0(t1)
##################################

##################################
# Enable the Accelerometer
##################################
jal spiInit
jal spiCSDown # Quick Enable Sensor
li a0,0x0A
jal spiSendGetData
li a0,0x2D
jal spiSendGetData
li a0,0x02 # enable measurement
jal spiSendGetData
jal spiCSUp
##################################


##################################
# Configure Timer
##################################
li t1, 0xFFFFFF
li t2, RPTC_LRC
sw t1, 0(t2)
##################################


NewMeasurement:

	##################################
	# Read X Axis
	##################################
	jal spiCSDown
	li a0, 0x0B
	jal spiSendGetData
	li a0, 0x08
	jal spiSendGetData
	li a0, 0xFF
	jal spiSendGetData
	jal spiCSUp

	add a0, zero, a1
	add s1, zero, a0

	##################################
	# Read Y Axis
	##################################
	jal spiCSDown
	li a0, 0x0B
	jal spiSendGetData
	li a0, 0x09
	jal spiSendGetData
	li a0, 0xFF
	jal spiSendGetData
	jal spiCSUp

	add a0, zero, a1
	sll s1, s1, 12
	add s1, s1, a0

	##################################
	# Read Z Axis
	##################################
	jal spiCSDown
	li a0, 0x0B
	jal spiSendGetData
	li a0, 0x0A
	jal spiSendGetData
	li a0, 0xFF
	jal spiSendGetData
	jal spiCSUp

	add a0, zero, a1
	sll s1, s1, 12
	add s1, s1, a0

    ##################################
    # Write the 7SegDisplays
    ##################################
    li t1, SegDig_ADDR
    sw s1, 0(t1)
    ##################################

    ##################################
    # Wait for some time
    ##################################
    li t2, 0x40             # 0 0100 0000
    li t1, RPTC_CTRL
    sw t2, 0(t1)
    li t2, 0x21             # 0 0010 0001
    sw t2, 0(t1)

    counting:
        lw t2, 0(t1)
        and t2, t2, 0x40
        beq t2, zero, counting
    ##################################

j NewMeasurement


sw s1, 0(sp)
sw ra, 4(sp)
add sp, sp, 16

ret



# -----------------------------------------------------------------------------------------------------------
# SPI Basic Library for SwervOlf
# -----------------------------------------------------------------------------------------------------------


# Register addresses for SPI Peripheral 
# -----------------------------------------------------------------------------------------------------------
#define SPCR    	0x80001100
#define SPSR    	0x80001108
#define SPDR    	0x80001110
#define SPER    	0x80001118
#define	SPCS		0x80001120



# Function: Initialize SPI peripheral
# call:  by call ra, spiInit
# inputs: None
# outputs: None
# destroys: t0, t1
# -----------------------------------------------------------------------------------------------------------
spiInit:
    li t1, SPCR # control register
    li t0, 0x53 #01010011 no ints, core enabled, reserved, master, cpol=0, cha=0, clock divisor 11 for 4096 
    sb t0, 0(t1)

    li t1, SPER # extension register
    li t0, 0x02 # int count 00 (7:6), clock divisor 10 (1:0) for 4096 
    sb t0, 0(t1)

    ret
# -----------------------------------------------------------------------------------------------------------



# Function: Pull CS Line to either high or low - Provides quick calls spiCSUp and spiCSDown
# call:  by call ra, spiCS
# inputs: CS status in a0 (0 is low, 1 is high)
# outputs: None
# destroys: t0
# -----------------------------------------------------------------------------------------------------------
spiCS:
	li t0, SPCS # CS register
	sb a0, 0(t0) # Send CS status

	ret
# -----------------------------------------------------------------------------------------------------------
spiCSUp:
	li a0, 0x00
	j spiCS
spiCSDown:
	li a0, 0xFF
	j spiCS


# Function: Send byte through SPI and get the slave data back
# call:  by call ra, spiSendGetData
# inputs: data byte to send in a0
# outputs: received data byte in a1
# destroys: t0, t1
# -----------------------------------------------------------------------------------------------------------
spiSendGetData: 

internalSpiClearIF: # internal clear interrupt flag
	li t1, SPSR # status register
	lb t0, 0(t1) # clear SPIF by writing a 1 to bit 7
	ori t0,t0,0x80
	sb t0, 0(t1)

internalSpiActualSend:
	li t0, SPDR # data register
	sb a0, 0(t0) # send the byte contained in a0 to spi

internalSpiTestIF:
	li t1, SPSR # status register
	lb t0, 0(t1)
	andi t0, t0, 0x80
	li t1, 0x80
	bne t0,t1,internalSpiTestIF # loop while SPSR.bit7 == 0. (transmission in progress)

internalSpiReadData:
	li t0, SPDR # data register
	lb a1, 0(t0) # read the message from SPI

	ret
# -----------------------------------------------------------------------------------------------------------

.end