echo "	Palindrome check :: "
read -p "Enter two numbers for palindrome check :: " pehla dusra
echo

function palindrome(){
rev=0
        while [ $pehla -gt 0 ]
        do
                rev=$(($(($rev*10)) + $(($pehla%10))))
		pehla=$(( $pehla/10 ))
        done

        if [ $rev -eq $2 ]
        then
                echo "  ::  $1 and $2 are Palindrome_Sets  :: "
        else
                echo "  ::  $1 and $2 are Non_Palindrome_Sets  :: "
        fi
}

palindrome $pehla $dusra

