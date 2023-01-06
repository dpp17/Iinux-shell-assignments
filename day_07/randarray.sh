echo " Write a program in the following steps : "
printf "\n"

echo " a. Generates 10 Random 3 Digit number. "
echo " b. Store this random numbers into a array. "
echo " c. Then find the 2nd largest and the 2nd smallest element without sorting the array "
printf "\n"

declare -a number=()	#declare

for ((i=0; i<=9; i++))	#initialize
do
	number[i]=$RANDOM
done
printf "\n"

echo ${number[@]}
printf "\n"

largest=${number[0]}
smallest=${number[0]}
secondmax=0
secondmin=1

for ((j=0; j < ${#number[@]}; j++))
do
#	echo ${number[j]}

	if [[ ${number[j]} -gt $largest ]]
	then
			#max=${number[j]}
			secondmax=$largest
			largest=${number[j]}
	elif [ ${number[j]} -gt $secondmax ]
	then
		#max=$largest
		secondmax=${number[j]}
	fi

	if [ ${number[j]} -le $smallest ]
	then
		secondmin=$smallest
		smallest=${number[j]}
	elif [[ ${number[j]} -le $secondmin ]]
	then
		secondmin=${number[j]}
fi
done

echo " 2nd MAXIMUM :: " $secondmax
echo " 2nd MINIMUM :: " $secondmin
