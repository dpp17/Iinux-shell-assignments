echo " Read a single digit number and write the number in word "
printf "\n"

read -p "enter a single digit number :: " n
#num=$(($n%10))
case $n in
        2)
        echo " Two "
        ;;
        3)
        echo " Three "
        ;;
        4)
        echo " Four "
        ;;
        5)
        echo " Five "
        ;;
        6)
        echo " Six "
        ;;
        7)
        echo " Seven "
        ;;
        8)
        echo " Eight "
        ;;
        9)
        echo " Nine "
        ;;
        0)
        echo " Zero "
        ;;
        1)
        echo " One "
        ;;
	*)
	echo " enter a S I N G L E digit"
esac

