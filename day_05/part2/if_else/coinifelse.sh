echo " ****** Flip a coin to get Head or Tail ****** "
face=$(($RANDOM%2))
echo $face

if (( $face == 0 ))
then
	echo "Heads"
else
	echo "Tails"
fi

