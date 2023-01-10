echo " :    { 50 } RANDOM PEOPLE HAVINF BIRTH DAY IN SAME MONTH BETWEEN YEAR 1992 and 1993   :"
echo

#dictionary
declare -A mondic=([1]=" " [2]=" " [3]=" " [4]=" " [5]=" " [6]=" " [7]=" " [8]=" " [9]=" " [10]=" " [11]=" " [12]=" " )
#array to store iteration
declare -a store

#generating birth_month of 50 individuals and segregating all who have same birth_months
for ((i=1; i<=50 ; i++))
do
	n=$(($(($RANDOM%12)) + 1))
	case $n in
		1)
			store[$(($n - 1))]=$((${store[$(($n - 1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
		;;
                2)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                3)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                4)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                5)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                6)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                7)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                8)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                9)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                10)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                11)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
                12)
			store[$(($n-1))]=$((${store[$(($n-1))]} + 1))
			mondic[$n]=${store[$(($n-1))]}
                ;;
esac
done

#echo ${store[@]}
#echo
echo -e "  Print_Birth _Month_Dictionary  :: \n { Month } { No. of people }"

#printing birth_month w.r.t no. of people in same birth_month
for key in ${!mondic[@]}
do
	echo "   " $key "   ::    " ${mondic[$key]}
done
