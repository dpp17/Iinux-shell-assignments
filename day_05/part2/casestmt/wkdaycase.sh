echo " Read a number and display the week_day "
printf "\n"

read -p "Enter a Week_Day number :: " num
n=$(($num%10))
case $n in
        1)
                echo " Monday "
        ;;
        2)
                echo " Tuesday "
        ;;
        3)
                echo " Wednesday "
        ;;
        4)
                echo " Thursday "
        ;;
        5)
                echo " Friday "
        ;;
        6)
                echo " Saturday "
        ;;
        7)
                echo " Sunday "
        ;;
	*)
		echo " * * * Enter valid week_Day_number * * * "
esac
