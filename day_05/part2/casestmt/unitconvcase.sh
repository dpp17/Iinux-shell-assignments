<<com
1ft = 12 inch = 0.3048 meter
1 meter = 3.28084 ft
1 inch = 0.0833333
com
echo " - - - - - - Program for unit conversion - - - - - -"
printf "\n"

echo "Choose options below :: "
echo -e " => 1. Feet to Inch \n => 2. Feet to Meter \n => 3. Inch to Feet \n => 4. Meter to Feet "
read -p "                  Option :: " op
printf "\n"

read -p "Enter amount to convert :: " num
printf "\n"

case $op in
	1)
		echo " option :: 1."
		echo " $num feet :: " $(($num*12)) "inch"
	;;
        2)
                echo " option :: 2."
		two=`echo $num | awk '{print $1*0.3048}'`
		echo " $num feet :: " $two "meter"
        ;;
        3)
                echo " option :: 3."
		three=`echo $num | awk '{print $1*0.0833333}'`
		echo " $num inch :: " $three "feet"
        ;;
        4)
                echo " option :: 4."
		four=`echo $num | awk '{print $1*3.28084}'`
		echo " $num meter :: " $four "feet"
        ;;
esac


