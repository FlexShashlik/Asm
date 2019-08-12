main:
	li		$a0, 3
	li		$a1, 0

	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	jal		sum

	lw		$ra, 0($sp)
	addi	$sp, $sp, 4

	jr		$ra

sum:
	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	slti 	$t0, $a0, 1
	bne		$t0, $zero, sum_exit

	add		$a1, $a1, $a0
	addi	$a0, $a0, -1

	jal		sum

sum_exit:
	move	$v1, $a1

	lw		$ra, 0($sp)
	addi	$sp, $sp, 4

	jr		$ra
