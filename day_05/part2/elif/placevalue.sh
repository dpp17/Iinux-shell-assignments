echo " Read a number 1,10,100,100,etc and dispaly unit ten, hundred,.. "
printf "\n"

read -p "enter a single digit number :: " n
num=$n
unit=$(($n%10))
ten=$(($(($n%100))/10))
hund=$(($(($n%1000))/100))
thous=$(($(($n%1000))/1000))
tthou=$(($(($n%1000))/10000))
echo $unit $ten $hund $thous $tthou

if (( $num <= 9 ))
then
        echo " single digit " $unit
elif (( $num >= 10 && $num <= 99 ))
then
        echo " Double_digit "
	echo "unit place :: " $unit
	echo "tenth place :: " $ten
elif (( $num >= 100 && $num <= 999 ))
then
        echo " Triple_digit "
	echo "unit place :: " $unit
	echo "tenth place :: " $ten
	echo "hundredth place :: " $hund
elif (( $num >= 1000 && $num <= 9999 ))
then
        echo " Quadruple_digit "
        echo "unit place :: " $unit
        echo "tenth place :: " $ten
        echo "hundredth place :: " $hund
	echo "thousandth place :: " $thous
elif (( $num >= 10000 && $num <= 99999 ))
then
        echo " Penta_digit "
        echo "unit place :: " $unit
        echo "tenth place :: " $ten
        echo "hundredth place :: " $hund
        echo "thousandth place :: " $thous
	echo "ten-thousandth place :: " $tthou
else
	echo " ENTER A NUMBER LESS THAN 100000 "
fi
