# Listing 4 - the index of the element is held in a register
# Register plan:  $s0 = address of scores[0]   $s1 = i
.data
scores: .word 40, 55, 70, 85, 100
msg:    .asciiz "scores[i] = "
nl:     .asciiz "\n"
tot: .asciiz "Total: "
 
.text
.globl main
main:
    la   $s0, scores  
    addi $s1, $zero, 1   
    addi $t0, $zero, 77
    	
    sll  $t1, $s1, 2
    add  $t1, $t1, $s0  
    sw   $t0, 0($t1)  
    
    lw $t0 0($s0)
    add $s3 $zero $t0
    
    lw $t0 4($s0)
    add $s3 $s3 $t0
    
    lw $t0 8($s0)
    add $s3 $s3 $t0
    
    lw $t0 12($s0)
    add $s3 $s3 $t0
    
    lw $t0 16($s0)
    add $s3 $s3 $t0
    
    li   $v0, 4	
    la   $a0, tot
    syscall
    li   $v0, 1
    add  $a0, $s3, $zero
    syscall
    li   $v0, 4
    la   $a0, nl
    syscall
    li   $v0, 10
    syscall
