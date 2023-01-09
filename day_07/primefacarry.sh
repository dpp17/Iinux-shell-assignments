echo " Store all the Prime_Factors of 'n' numbers into an array "
printf "\n"

declare -a store=( 1 )

function primefact(){
count=0
	for ((i=2; i<=$1; i++))
	do
		if (( $(($1%$i)) == 0 ))
		then
			count=$(($count+1))
		fi
	done
	if [ $count -eq 1 ]
	then
		store+=("$1")
	fi
}
read -p "Enter a number for Prime_Factorization :: " temp
printf "\n"

for ((j=2; j<= $(($temp/2)) ;j++))
do
	if [ $(($temp%$j)) -eq 0 ]
	then
		primefact $j
	fi
done
echo "All the Prime_Factors of $temp :: " ${store[@]}
