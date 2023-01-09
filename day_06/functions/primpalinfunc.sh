echo "Check if the no. is prime and palindrome and check if its palindrome is prime ::"
echo
read -p "Enter a number to check :: " num
function prime(){
	for((i=1; i<=$1; i++))
	do
		n=$(($1 %$i))
		if [ $n -eq "0" ]
		then
			r=$(($r+1))
		fi
	done

	if [ $r -ge 3 ]
	then
		echo "				$1 is Not a Prime Number"
	elif [ $r -eq 2 ]
	then
		echo "				$1 is Prime number"
	else
		echo "				$1 is Neither Prime Nor Composite number :: $1"
	fi
r=0
}

function palindrome(){
rev=0
        while [ $num -gt 0 ]
        do
                rev=$(($(($rev*10)) + $(($num%10))))
		num=$(( $num/10 ))
        done

        echo " Palindrome of $1  :: " $rev
	echo
	prime $rev

}

prime $num
echo
palindrome $num
