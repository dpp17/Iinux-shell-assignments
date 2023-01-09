read -p "Enter the power of 2 :: " n
for ((i=1 ; i<=$n ; i++))
do
	echo " $i. 2^$i :: " $(( 2**$i ))

done

