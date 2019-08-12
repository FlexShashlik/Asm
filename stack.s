main:
    li      $t0, 12
    addi    $t1, $t0, 21
    
    li      $a0, 2
    li      $a1, 5
    li      $a2, 1
    li      $a3, 1

    jal     leaf_example
    jr      $ra

leaf_example:
    addi    $sp, $sp, -12

    sw      $t1, 8($sp)
    sw      $t0, 4($sp)
    sw      $s0, 0($sp)

    add     $t1, $a0, $a1
    add     $t0, $a2, $a3
    sub     $s0, $t1, $t0

    add     $v0, $s0, $zero

    lw      $s0, 0($sp)
    lw      $t0, 4($sp)
    lw      $t1, 8($sp)

    addi    $sp, $sp, 12

    jr      $ra