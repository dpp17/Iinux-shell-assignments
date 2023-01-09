
# PRIME NUMER CHECK
echo " ***** Prime_Number Checker ***** "
read -p "Enter a number to check :: " n

for((i=1; i<=$n; i++))
do
	num=$(($n %$i))
	if [ $num -eq "0" ]
	then
		r=$(($r+1))
	fi
done
if [ $r -ge 3 ]
then
	echo "Not a Prime Number"
elif [ $r -eq 2 ]
then
	echo "Prime number"
else
	echo "Neither Prime Nor Composite number :: $n"
fi
