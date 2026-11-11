.data
board: .word 0, 0, 0, 0, 0, 0, 0, 0, 0
 
.text
.globl main
main:
    la   $s0, board
    
    add $s1 $zero 1
    add $s2 $zero 2
    
    add $s3 $s1 $s1
    add $s3 $s3 $s1
    add $s3 $s3 $s2
    sll $s3 $s3 2
    
    add $s3 $s3 $s0
    addi $t0 $zero 1
    sw $t0 0($s3)
    
    add $s1 $zero 2
    add $s2 $zero 0
    
    add $s3 $s1 $s1
    add $s3 $s3 $s1
    add $s3 $s3 $s2
    sll $s3 $s3 2
    
    add $s3 $s3 $s0
    addi $t0 $zero 2
    sw $t0 0($s3)
    
    
    li   $v0, 10
    syscall
