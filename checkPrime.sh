echo  "Enter the Number :" 
read n

for((i=2;i<=$n/2;i++))
do
	ans=$(( n%i ))
	if [ $ans -eq 0 ]
	then
		echo "$n is not a prime number"
		exit 0
	fi
done
echo "$n is a prime number"

s=0
rev=""
temp=$n
while [ $n -gt 0 ]
do
	s=$(( $num % 10 ))
	n=$(( $num /10 ))
rev=$( echo ${rev}${s} )
done

	if [ $temp -eq $rev ]
	then
   echo "Number is palindrome"
else
   echo "Number is NOT palindrome"
fi

