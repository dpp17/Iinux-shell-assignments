echo " Read a number and display the week_day "
printf "\n"

read -p "Enter a Week_Day number :: " num
#num=$(($n%10))

if [ $num -eq 1 ]
then
        echo " MONDAY "
elif [ $num -eq 2 ]
then
        echo " Tuesday "
elif [ $num -eq 3 ]
then
        echo " Wednesday "
elif [ $num -eq 4 ]
then
        echo " Thursday "
elif [ $num -eq 5 ]
then
        echo " Friday "
elif [ $num -eq 6 ]
then
        echo " Saturday "
elif [ $num -eq 7 ]
then
        echo " S U N D A Y "
else
	echo " ******* I N V A L I D   E N T R Y ( please re-try ) ******* "
fi
