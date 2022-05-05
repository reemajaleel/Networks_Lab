#checking the given number is prime or not 
if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
echo "Enter a number: "
read number
i=2
flag=0
while [ $i -le `expr $number / 2` ]
do
if [ `expr $number % $i` -eq 0 ]
then
flag=1
fi
i=`expr $i + 1`
done
if [ $number -le 1 ]
then 
flag=1
fi
if [ $flag -eq 1 ]
then
echo "The number $number is Not Prime"
else
echo "The number $number is Prime"
fi


