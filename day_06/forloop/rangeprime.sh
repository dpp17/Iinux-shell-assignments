# PRIME NUMER CHECK For Range
echo " ***** Prime_Number Checker For Range ***** "
read -p "Enter lowest and then highest range of series :: " ln rn
printf "\n"

function prime(){
	for((i=1; i<=$1; i++))
	do
        	num=$(($1 %$i))
        	if [ $num -eq "0" ]
        	then
                	r=$(($r+1))
        	fi
	done
	if [ $r -ge 3 ]
	then
        	echo " ---------------Not a Prime Number :: $1"
		count1=$(($count1+1))
	elif [ $r -eq 2 ]
	then
        	echo "$1 Prime number"
		count2=$(($count2+1))
	else
        	echo "$1 --- Neither Prime Nor Composite number --- "
		count3=$(($count3+1))
	fi
r=0
}

for((x=$ln; x<=$rn; x++))
do
	prime $x
	count4=$(($count4+1))
done
printf "\n"
ECHO "Total numbers in given range :: " $count4
echo "Total Prime Numbers :: " $count2
echo "Total Non-prime/Composite Number :: " $count1
echo  "Entry of '1' :: " $count3
