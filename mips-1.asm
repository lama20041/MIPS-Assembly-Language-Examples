.data
x: .asciiz "Enter a valuse of x "
y: .asciiz "Enter a valuse of y "

res: .asciiz "Reslt is = "



.text
##print enterh the x
li $v0,4
la $a0,x
syscall
##read enterh the x

li $v0,5
syscall
move $s1,$v0

##print enterh the y

li $v0,4
la $a0,y
syscall
##read enterh the y

li $v0,5
syscall
move $s2,$v0


add $t1,$s1,$s2
addi $t2,$s1,15
addi $t3,$s2,10
sub $t4,$t1,$t2
add $s0,$t4,$t3

li $v0,4
la $a0,res
syscall

li $v0,1
move $a0,$s0
syscall



