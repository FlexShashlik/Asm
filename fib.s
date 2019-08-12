main:
	addi	$sp, $sp, -4
	sw		$ra, 0($sp)			# save return address

	li 		$a0, 10
	jal 	fib

	addi	$sp, $sp, 4
	lw		$ra, 0($sp)			# load return address

	jr		$ra

fib:
	addi	$sp, $sp, -4
	sw		$ra, 0($sp)			# save return address

	add		$s0, $zero, $zero 	# a = 0
	li		$s1, 1				# b = 1
	add		$s2, $s0, 	$s1		# c = a + b

	jal 	loop1

loop1:
	slti	$t0, $a0,	2		# if n > 1
	beq		$t0, $zero, loop2	# go to loop

	move 	$v1, $s2			# return c

	addi	$sp, $sp, 4
	lw		$ra, 0($sp)			# load return address

	jr		$ra

loop2:
	add		$s2, $s0, 	$s1		# c = a + b
	move	$s0, $s1			# a = b
	move	$s1, $s2			# b = c
	addi	$a0, $a0, 	-1		# n--

	jal 	loop1