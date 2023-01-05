echo " Write a program that takes day and month as user_input "
echo " print true if between 20th march and 20th june. "
printf "\n"

read -p "Enter date :: " date
read -p "Enter month (words) :: " month
printf "\n"
echo " Your Entered Date :: " $date $month
r=`echo $month | awk '{print $1}'`

if [[ "$r" = "april" && $date -le 30 && $date -ne 0 ]]
then
	echo "pass"
else
	if [[ "$r" = "may" && $date -le 31 && $date -ge 1 ]]
	then
        	echo "pass"
	else
		if [[ "$r" = "march" && $date -le 31 && $date -gt 20 ]]
		then
        		echo "pass"
		else
			if [[ "$r" = "june" && $date -lt 20 && $date -ne 0 ]]
			then
        		echo "pass"
			else
        			echo "fail"
			fi
		fi
	fi
fi

