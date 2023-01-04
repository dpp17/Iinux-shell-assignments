echo "****** DICE_ROLL SUM OF TWO RANDOM OUTCOMES ****** "
num=$(($RANDOM%6 + 1))
num2=$(($RANDOM%6 +1))
echo "Two random Outcomes are :: " $num " and " $num2
echo "Outcome_Sum :: "$(($num + $num2))
