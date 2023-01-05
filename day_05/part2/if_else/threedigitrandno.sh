echo "****** 5 RANDOM 3 DIGIT greatest AND smallest ****** "
#num5=$(($RANDOM%100 + $RANDOM%100 + $rANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100))
#num4=$(($RANDOM%100 + $RANDOM%100 + $rANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100))
#num3=$(($RANDOM%100 + $RANDOM%100 + $rANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100))
#num2=($(($RANDOM%100 + $RANDOM%100 + $rANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100 + $RANDOM%100))
num1=$(($RANDOM%100 + 111))
num2=$(($RANDOM%100 + 111))
num3=$(($RANDOM%100 + 111))
num4=$(($RANDOM%100 + 111))
num5=$(($RANDOM%100 + 111))


echo "Series :: " $num1 $num2 $num3 $num4 $num5

# _num1
if (( $num1 > $num2 && $num1 > $num3 && $num1 > $num4 && $num1 > $num5 ))
then
	echo "Greatest number :: " $num1
else
	if (($num1 < $num2 && $num1 < $num3 && $num1 < $num4 && $num1 < $num5 ))
	then
		echo "Smallest number :: " $num1
	fi

fi

# _num2
if (( $num2 > $num1 && $num2 > $num3 && $num2 > $num4 && $num2 > $num5 ))
then
        echo "Greatest number :: " $num2
else
        if (($num2 < $num1 && $num2 < $num3 && $num2 < $num4 && $num2 < $num5 ))
        then
                echo "Smallest number :: " $num2
        fi

fi

# _num3
if (( $num3 > $num2 && $num3 > $num1 && $num3 > $num4 && $num3 > $num5 ))
then
        echo "Greatest number :: " $num3
else
        if (($num3 < $num2 && $num3 < $num1 && $num3 < $num4 && $num3 < $num5 ))
        then
                echo "Smallest number :: " $num3
        fi

fi

# _num4
if (( $num4 > $num2 && $num4 > $num3 && $num4 > $num1 && $num4 > $num5 ))
then
        echo "Greatest number :: " $num4
else
        if (($num4 < $num2 && $num4 < $num3 && $num4 < $num1 && $num4 < $num5 ))
        then
                echo "Smallest number :: " $num4
        fi

fi

# _num5
if (( $num5 > $num2 && $num5 > $num3 && $num5 > $num1 && $num5 > $num4 ))
then
        echo "Greatest number :: " $num5
else
        if (($num5 < $num2 && $num5 < $num3 && $num5 < $num1 && $num5 < $num4 ))
        then
                echo "Smallest number :: " $num5
        fi

fi

