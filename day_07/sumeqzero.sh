echo "Sum of 3 digits/integers to zero"

declare -a number=()    #declare
<<com
for ((i=0; i<=9; i++))  #initialize
do
        number[i]=$RANDOM
done
printf "\n"
com
number+=( 3 -1 -7 -4 -5 9 10)
echo ${number[@]}
printf "\n"

for ((k=0; k < ${#number[@]}; k++))
do
	for ((j=$(($k+1)); j < $((${#number[@]}-1)); j++))
	do
		for ((i=$(($j+1)); i < $((${#number[@]}-2)); i++))
		do
			sum=$(( ( ${number[i]} ) + ( ${number[i+1]} ) + ( ${number[i+2]} ) ))
			if [ $sum -eq 0 ]
			then
				echo "Sum of three integers is zero    => interger are :: " ${number[i]} ${number[i+1]} ${number[i+2]}
			exit
			fi
		done
	done
done
