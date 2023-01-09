echo " ****** Factorial of a Number ****** "
read -p " Enter a number to get factorial :: " num
fac=1
for((i=1; i<=$num; i++))
do
	fac=$(($i*$fac))
done
echo "Factorial of $num :: " $fac
