echo " factorization  :: "
read -p "enter number :: " num
count=0

for ((i=2; i<=$num; i++))
do
	if [ $(($num%$i)) -eq 0 ]
	then
		count=$(($count+1))
		echo $i
	fi
done
echo $count

if [ $count -le 1 ]
then
	echo "********* prime **********"
else
	echo "******* not a prime ********"
fi
