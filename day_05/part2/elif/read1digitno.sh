echo " Read a single digit number and write the number in word "
printf "\n"

read -p "enter a single digit number :: " n
num=$(($n%10))
if [ $num -eq 0 ]
then
	echo " Zero "
elif [ $num -eq 1 ]
then
	echo " One "
elif [ $num -eq 2 ]
then
	echo "Two"
elif [ $num -eq 3 ]
then
	echo "Three"
elif [ $num -eq 4 ]
then
	echo "Four"
elif [ $num -eq 5 ]
then
	echo " Five "
elif [ $num -eq 6 ]
then
	echo " Six "
elif [ $num -eq 7 ]
then
	echo " Seven "
elif [ $num -eq 8 ]
then
	echo " Eight "
else
	echo " Nine "
fi

