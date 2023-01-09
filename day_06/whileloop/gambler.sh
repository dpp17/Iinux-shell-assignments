printf "\n"
echo " ****** Gambling_Mania ****** "
printf "\n"

start_money=100
bet=1
goal_money=200

while (( $start_money > 0 && $start_money < $goal_money ))
do
	r=$(($RANDOM%2))
	if [ $r -eq 0 ]
	then
#		echo " W I N "
		start_money=$(($start_money+10))
		count1=$(($count1+1))
	else
#		echo " L O S E "
		start_money=$(($start_money-11))
		count2=$(($count2+1))
	fi

	if [ $start_money -le 0 ]
	then
	echo "	Man you are SOOOOOOOOO B_R_O_K_E	"
	elif [ $start_money -ge 200 ]
	then
		echo "	C_O_N_G_R_A_T_U_L_A_T_I_O_N_S you just won 200 million dollars USD.	"
	fi
	#echo "code"
done
echo
echo " Total number of bets :: " $(($count1 + $count2))
echo " Total Wins :: " $count1
echo " Total losses :: " $count2
