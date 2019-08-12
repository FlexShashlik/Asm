main:
	li 		$a0, 5

	addi	$sp, $sp, -4
	sw		$ra, 0($sp)

	jal 	fact

	lw		$ra, 0($sp)
	addi	$sp, $sp, 4

	jr		$ra

fact:
	bgt		$a0, 0, acc

	li		$v1, 1

	jr		$ra

acc:
	addi 	$sp, $sp, -8
	sw		$ra, 4($sp)
	sw		$a0, 0($sp)

	addi 	$a0, $a0, -1
	jal 	fact
	
	lw		$a0, 0($sp)
	lw		$ra, 4($sp)
	addi	$sp, $sp, 8

	mul		$v1, $v1, $a0

	jr		$ra