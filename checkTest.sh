echo  "Enter the Number :"
read n
checkPrime() {
for((i=2;i<=n/2;i++))
do
	ans=$(( n%i ))
	if [ $ans -eq 0 ]
	then
		echo "$n is not a prime number"
		checkPalindrome;
	exit
	fi
	done
		echo "$n is a prime number"
}

checkPalindrome() {

s=0
rev=""
temp=$n
while [ $n -gt 0 ]
do
	s=$(( $n % 10 ))
	n=$(( $n /10 ))
	rev=$( echo ${rev}${s} )
done

	if [ $temp -eq $rev ]
	then
   echo "Number is palindrome"
	else
   echo "Number is NOT palindrome"
	fi

}


checkPrime;






