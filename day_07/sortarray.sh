echo "Sort an array and print 2nd largest and 2nd smallest"

declare -a number=()    #declare

for ((i=0; i<=9; i++))  #initialize
do
        number[i]=$RANDOM
done
printf "\n"

echo ${number[@]}
printf "\n"

#sorting_array

for ((j=0; j < ${#number[@]}; j++))
do
for (( i=0;i < $((${#number[@]}-1)); i++ ))
do
	#for ((; ; ))
	if [ ${number[i]} -gt ${number[i+1]} ]
	then
		temp=${number[i]}
		number[i]=${number[i+1]}
		number[i+1]=$temp
	elif [ ${number[i]} -le ${number[i+1]} ]
	then
		number[i]=${number[i]}
		number[i+1]=${number[i+1]}
	fi
done
done
len=${#number[@]}
echo "sorted_array" ${number[@]}
printf "\n"
echo "2nd maximum :: " ${number[len-2]}
echo "2nd minimun :: " ${number[1]}
