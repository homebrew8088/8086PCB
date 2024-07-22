
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ReadIOPort 16 bit from 8 bit
;BHE= 0, A0=0, IOM=0, DTR=0  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IORD:

END_IORD:
TIMES 0X100-(END_IORD-IORD) DB 0XFF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;WriteIOPort 16 bit to 8 bit
;BHE= 0, A0=0, IOM=0, DTR=1  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
IOWR:

END_IOWR:
TIMES 0X100-(END_IOWR-IOWR) DB 0XFF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;ReadMemory 8 BIT 16 bit from 8 bit
;BHE= 0, A0=0, IOM=1, DTR=0  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MEMRD_C1:
DB 0XFE, 0XF0, 0XF0, 0XF0, 0XF1
END_MEMRD_C1:
TIMES 0X80-(END_MEMRD_C1-MEMRD_C1) DB 0XFF
MEMRD_C2:
DB 0XFF, 0XF3, 0XF7, 0X07, 0X07
END_MEMRD_C2:
TIMES 0X80-(END_MEMRD_C2-MEMRD_C2) DB 0XFF
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;0  1  WriteMemory 16 bit from 8 bit
;BHE= 0, A0=0, IOM=1, DTR=1  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
MEMWR:

END_MEMWR:
TIMES 0X100-(END_MEMWR-MEMWR) DB 0XFF
db 0x55, 0xaa



