LUI r3 0
LUI r5 3
ADDI r5 r5 5
BEQ r0 r3 1
LUI r31 255
ADDI r1, r1, 1
SW r1, 1(r0)
LB r2, 1(r0)
ADDI r2, r2, 6
LBU r2, 2(r0)
LH r3, 3(r0)
LHU r4, 4(r0)
LW r5, 5(r0)
SB r6, 6(r0)
SH r7, 7(r0)
SW r8, 8(r0)
J 19
LUI r10 10
LUI r11 11
JAL 22
LUI r25 25
LUI r26 26
ADDI r27, r27, 27
JALR r29 r27
LUI r12 12
LUI r13 13
ADDI r13 r13 1
LUI r14 2
LUI r15 4
OR r14 r14 r15
LUI r16 2
LUI r17 4
AND r16 r16 r17
LUI r18 6
LUI r19 4
XOR r18 r18 r19
LUI r20 1
LUI r21 255
NOR r20 r20 r21
LUI r22 1
LUI r14 7
LUI r16 3
LUI r18 18
SLL r23 r22 4
SRL r15 r14 6
SRA r17 r16 20
HALT