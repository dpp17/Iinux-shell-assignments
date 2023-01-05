echo " Get a range from 0-100,find_store digits that are repeated as 33,77 etc in array"
echo
read -p " Enter start and end Range as {1...100} :: " le re
echo

for i in $(seq $le $re)
do
	if [ $(($i/10)) -eq $(($i%10)) ]
	then
		store+=( $i )
	fi
done

echo "All the 2-digit numbers that are repeated :: " ${store[@]}
