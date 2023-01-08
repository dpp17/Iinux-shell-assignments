echo "	------ :  Convert degF or degC : ------  "
echo
echo -e " Choose a option :: \n 1.degC to degF :: \n 2.degC to degF :: "
read num

#read -p " Enter the temperature :: " temp
echo
function tapman(){
	case $1 in
		1)
		read -p " Enter the temperature in Celcius :: " celsi

		if [[ $celsi -gt 0 && $celsi -lt 100 ]]
		then
			degF=`echo $celsi | awk '{print $1*(9/5)+32}'`
#echo $degF
                	echo -e "Converted =:	$celsi\u00b0C :: $degF\u00b0F"
		elif [ $celsi -le 0 ]
		then
			echo -e " ***	' C_A_U_T_I_O_N :: At or Below the Freezing_Point { 0\u00b0C } :: 0\u00b0C '	*** "
		elif [ $celsi -ge 100 ]
		then
			echo -e " ***	' C_A_U_T_I_O_N :: At or Above the Boiling_Point { 100\u00b0C } :: (100\u00b0C) '	*** "
		fi
		;;
		2)
		read -p " Enter the temperature in Farenheit :: " farh

		if [[ $farh -gt 32 && $farh -lt 212 ]]
        	then
			degC=`echo $farh | awk '{print ($1 - 32)*(5/9)}'`
#echo $degC
                	echo -e "Converted =:	$farh\u00b0C :: $degC\u00b0F"
                elif [ $farh -le 32 ]
                then
			echo -e " ***	' C_A_U_T_I_O_N :: At or Below the Freezing_Point { 32\u00b0F } :: (32\u00b0F) '	*** "
                elif [ $farh -ge 212 ]
                then
			echo -e " ***	' C_A_U_T_I_O_N :: At or Above the Boiling_Point { 212\u00b0F } :: (212\u00b0F) '	*** "
                fi
		;;
		*)
			echo "Enter a valid option."
	esac

}


tapman $num
