.text
.globl main

main:
    # Initialize values
    addi $t0, $zero, 5      # $t0 = 5
    addi $t1, $zero, 3      # $t1 = 3
    
    # Arithmetic operations
    add $t2, $t0, $t1       # $t2 = $t0 + $t1 = 8
    sub $t3, $t0, $t1       # $t3 = $t0 - $t1 = 2
    and $t4, $t0, $t1       # $t4 = $t0 & $t1 = 1
    or $t5, $t0, $t1        # $t5 = $t0 | $t1 = 7
    
    # Memory operations
    addi $s0, $zero, 0x100  # $s0 = 0x100 (memory address)
    sw $t2, 0($s0)          # Store $t2 (8) at address 0x100
    lw $t3, 0($s0)          # Load from address 0x100 into $t3

    # Exit program
    li $v0, 10
    syscall

.data
# Data section if needed