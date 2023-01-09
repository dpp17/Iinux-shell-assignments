declare -a array

read -p "length :: " len #LENGTH OF ARRAY

echo
echo "add elements :: "

for ((i=0; i<$len; i++)) #6
do
	read value
	array+=($value)
done
echo
echo "array :: " ${array[@]}
