echo "Using 3 numbers do arithematic_operations and find max._min."
printf "\n"

read -p "Enter three numbers :: " num1 num2 num3

op1=$(($(($num1 + $num2)) * $num3))
op2=$(($(($num1%$num2)) + $num3))
op3=$(( $num3 + $(($num1/$num2))))
op4=$(($(($num1 * $num2)) + $num3))
echo " ------- Arithematic Operations -------"
echo " => 1. {(a+b)*c} " $op1
echo " => 2. {(a%b)+c} " $op2
echo " => 3. {c+(a/b)} " $op3
echo " => 4. {(a*b)+c} " $op4
printf "\n"

if (( $num1 < $num2 && $num1 < $num3))
then
	echo "Minimum :: " $num1
	if (( $num2 > $num1 && $num2 > $num3 ))
	then
        	echo "Maximum :: " $num2

	elif (( $num3 > $num2 && $num3 > $num1 ))
	then
		echo "Maximum :: " $num3
	fi
elif (( $num2 < $num1 && $num2 < $num3))
then
        echo "Minimum :: " $num2
	if (( $num1 > $num2 && $num1 > $num3 ))
	then
	        echo "Maximum :: " $num1
        elif (( $num3 > $num2 && $num3 > $num1 ))
        then
                echo "Maximum :: " $num3
	fi
elif (( $num3 < $num2 && $num3 < $num1))
then
        echo "Minimum :: " $num3
	if (( $num1 > $num2 && $num1 > $num3 ))
        then
                echo "Maximum :: " $num1
        elif (( $num2 > $num1 && $num2 > $num3 ))
        then
                echo "Maximum :: " $num2
	fi
else
	echo "ALL ARE EQUAL"
fi
