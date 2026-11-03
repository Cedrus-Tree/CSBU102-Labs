# Full name: Le Son Tung
# Student ID: 26560066
# Purpose: Read 4 electricity meter readings and print the 3 monthly usages and total.

.data
prompt: .asciiz "Enter reading (kWh): "
m1:     .asciiz "Month 1: "
m2:     .asciiz "Month 2: "
m3:     .asciiz "Month 3: "
tot:    .asciiz "Total:   "
nl:     .asciiz "\n"

 
.text
.globl main
main:
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5     
    syscall
    add  $s0, $v0, $zero
    
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5     
    syscall
    add  $s1, $v0, $zero  
    
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5     
    syscall
    add  $s2, $v0, $zero    
    
    li   $v0, 4
    la   $a0, prompt
    syscall
    li   $v0, 5     
    syscall
    add  $s3, $v0, $zero 
    
    sub $t0, $s1, $s0
    sub $t1, $s2, $s1
    sub $t2, $s3, $s2
    sub $t3, $s3, $s0
    
    li   $v0, 4
    la   $a0, m1
    syscall
    li   $v0, 1
    addi $a0, $t0, 0
    syscall
    li   $v0, 4
    la $a0, nl
    syscall
    
    la   $a0, m2
    syscall
    li   $v0, 1
    addi $a0, $t1, 0
    syscall
    li   $v0, 4
    la $a0, nl
    syscall
    
    la   $a0, m3
    syscall
    li   $v0, 1
    addi $a0, $t2, 0
    syscall
    li   $v0, 4
    la $a0, nl
    syscall
    
    la   $a0, tot
    syscall
    li   $v0, 1
    addi $a0, $t3, 0
    syscall
 
    li   $v0, 10
    syscall
