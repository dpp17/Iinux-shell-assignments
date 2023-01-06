echo " Read a number 1,10,100,100,etc and dispaly unit ten, hundred,.. "
printf "\n"

read -p "enter a number( 1,10,100,1000 ) :: " n
num=$n
unit=$(($n%10))
ten=$(($(($n%100))/10))
hund=$(($(($n%1000))/100))
thous=$(($(($n%1000))/1000))
#tthou=$(($(($n%1000))/10000))
#echo $unit $ten $hund $thous $tthou

case $num in
        1)
                echo " Unit_digit :: " $unit
        ;;
        10)
                echo " unit_digit :: " $unit
        	echo " tenth_digit :: " $ten
	;;
        100)
                echo " unit_digit :: " $unit
		echo " tenth_digit :: " $ten
		echo " hundredth_digit " $hund
        ;;
        1000)
                echo " unit_digit :: " $unit
                echo " tenth_digit :: " $ten
                echo " hundredth_digit " $hund
		echo " thousandth_digit " $thous
        ;;
	*)
		echo " * * * Enter number from options ONLY * * * "
esac
