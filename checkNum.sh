echo "Enter the Number"
read n

checkisPrime() {
for (( i=2;i<=$n/2;i++ ))
do
        ans=$(( n%i ))
        if [ $ans -eq 0 ]
        then
                echo "$n is not a prime number"
	else
		echo "$n is a prime number"
		exit 0
	fi
done
}

checkisPrime;

sd=0
rev=""
ans=$n

while [ $n -gt 0 ]
do
    sd=$(( $n % 10 ))
    n=$(( $n / 10 ))
    rev=$( echo ${rev}${sd} )
done
if [ $ans -eq $rev ]
	then
		echo "Number is Palindrome"

	checkisPrime
	elif [ $ans -eq 0 ]
	then
			echo "Palindrome is not prime"
	else
			echo "Palindrome is Prime"
else
		echo "Number is not Palindrome"
	fi




