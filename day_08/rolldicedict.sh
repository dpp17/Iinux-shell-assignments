echo
echo "Dice rolling.............."

declare -A diced #dictionary_declare
declare -a outcome #Array_declare

flag=0	#counter

while [ $flag -lt 10 ]
do
	num=$(($(($RANDOM%6))+1))

	case $num in
		1)
		one=$(($one+1))	#i++ to count no. of 1's iteration
		diced[1]=$one
		flag=$one
		;;
	        2)
	        two=$(($two+1))
		diced[2]=$two
		flag=$two
	        ;;
	        3)
	        three=$(($three+1))
		diced[3]=$three
		flag=$three
	        ;;
	        4)
	        four=$(($four+1))
		diced[4]=$four
		flag=$four
	        ;;
	        5)
	        five=$(($five+1))
		diced[5]=$five
		flag=$five
	        ;;
		6)
	        six=$(($six+1))
		diced[6]=$six
		flag=$six
        	;;
	esac
done

echo "Dice_dictionary :: " ${diced[@]}
echo

#maximum_iterated_dice_face
outcome+=( $one $two $three $four $five $six )
echo -e " Dice_face - face_Iteration :: \n" "1 : " $one "\n 2 : " $two "\n 3 : " $three "\n 4 : " $four "\n 5 : " $five "\n 6 : " $six
smallest=10
greatest=0
for ((i=0; i < $((${#outcome[@]}-1)); i++))
do
	k=$(($i+1))
	abhi=${outcome[$i]}
	baad=${outcome[$k]}

	if [ $baad -ne 0 ]
	then
		if [[ $abhi -ge $baad && $abhi -gt $greatest ]]
		then
		greatest=$abhi
		greatno=$k
		elif [[ ${outcome[$((${#outcome[@]} - 1))]} -ge ${outcome[$((${#outcome[@]} -2 ))]} && ${outcome[$((${#outcome[@]} - 1))]} -gt $greatest ]]
		then
		greatest=${outcome[$((${#outcome[@]} - 1))]}
		greatno=${#outcome[@]}
		fi
		if [[ $abhi -le $baad && $abhi -lt $smallest ]]
		then
		smallest=$abhi
		smallno=$k
		elif [[ ${outcome[$((${#outcome[@]} - 1))]} -le ${outcome[$((${#outcome[@]} -2 ))]} && ${outcome[$((${#outcome[@]} - 1))]} -le $smallest ]]
		then
		smallest=${outcome[$((${#outcome[@]} - 1))]}
		smallno=${#outcome[@]}
		fi
	fi
done

echo
echo "	{ Maxi_mum }	=>  $greatno  :: " $greatest
echo "	{ Mini_mum }	=>  $smallno  :: " $smallest

