.text
.globl main

main:
    addi $t0, $0, 5
    addi $t1, $0, 1
    addi $t2, $0, 0
    addi $t3, $0, 0

countdown:
    add  $t2, $t2, $t0
    addi $t0, $t0, -1
    beq  $t0, $t3, done
    beq  $0, $0, countdown

done:
    addi $t4, $0, 99
    
    # Exit program
    li $v0, 10
    syscall