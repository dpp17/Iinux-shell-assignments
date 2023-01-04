<<com
1.If the year is evenly divisible by 4, go to step 2. Otherwise, go to step 5.
2.If the year is evenly divisible by 100, go to step 3. Otherwise, go to step 4.
3.If the year is evenly divisible by 400, go to step 4. Otherwise, go to step 5.
4.The year is a leap year (it has 366 days).
5.The year is not a leap year (it has 365 days).
com


echo " TAKE A USER INPUT YEAR AND CHECK FOR LEAP YEAR "
printf "\n"

read -p "ENTER A YEAR BETWEEN '1000' AND '9999' :: " year
printf "\n"
echo 

if (( $year <= 9999 && $year >= 1000 ))
then
	if (( ( $(($year%4)) == 0 && $(($year%100)) != 0 ) || $(($year%400)) == 0 ))
	then
		echo "leap year"
	else
		echo "Not a leap year"
	fi
else
	echo " * * *  ENTER A YEAR WITHIN THE LIMIT  * * * "
fi
