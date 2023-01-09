printf "\n"
echo " ***** Harmonic_Series ***** "
printf "\n"
read -p "Enter the number :: " n
for ((i=1 ;i<=$n; i++))
do
	r=`echo $r + 1/$i `
done
echo " Hn = " $r
