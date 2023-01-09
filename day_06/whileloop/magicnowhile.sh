echo " ::   Guess a Magic_number and I will tell you your guessed number   ::"
echo

read -p "Think a number 'n' between 1to 100 :: " num
echo

#echo $num
if [[ $num -ge 1 && $num -le 100 ]]
then
	mid=$(($num/2))
	ref=$mid
	#echo $ref

	while [[ $num -ge 1 && $num -le 100 && $num -ne $mid ]]
	do

		if [ $num -gt $mid ]
		then

			ref=$(($(($(($num+ $mid))/2))+1))
#			echo $ref
			mid=$ref

		fi
	done
	echo "::   Your guessed number  ::  (( $ref ))   ::"

else
	echo " ::   Please think of a number between 1 to 100 only.   ::"
fi

