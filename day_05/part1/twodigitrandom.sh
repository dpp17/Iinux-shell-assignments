echo "****** 5 RANDOM 2 DIGIT SUM AND AVERAGE ****** "
printf "\n"
num1=$(($RANDOM%100 + 11))
num2=$(($RANDOM%100 + 11))
num3=$(($RANDOM%100 + 11))
num4=$(($RANDOM%100 + 11))
num5=$(($RANDOM%100 + 11))

echo "Random numbers are :: " $num1 $num2 $num3 $num4 $num5
sum=$(($num1 + $num2 + $num3 + $num4 + $num5))
echo "SUM OF NUMBERS :: " $sum
avg=`echo $sum | awk '{print $1/5}'`
echo "AVERAGE OF NUMBERS :: " $avg
