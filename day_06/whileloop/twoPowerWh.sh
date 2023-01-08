echo "****** Display 2's power { Range :: 2^n = 256 } ******"
printf "\n"
read -p "Enter a number for 2's power :: " num

i=1
r=256
#for ((x=1;x<=$num; x++))
while (( $((2**$i)) <= $r && $((2**$i)) <= $((2**$num)) ))
do
	echo " 2^$i :: " $((2**$i))

	((i++))
done
#done
