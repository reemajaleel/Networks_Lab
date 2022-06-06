#Shell script to print specified range of lines from given files

if [ $# -eq 0 ]
then 
	echo "Syntax error"
	echo "Syntax is <$0> <filename1> <filename2> etc.."
	exit 1
fi

c=$#
echo "Enter lower limit:"
read l
echo "Enter upper limit:"
read u
file=$1

while [ $c -gt 0 ]
do 
echo "$1 lines $l to $u"

cat $file | head -$u | tail -n +$l
c=`expr $c - 1`
shift
done
exit 0




<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh range.sh alphabet.txt a.txt
Enter lower limit:
2
Enter upper limit:
7
alphabet.txt lines 2 to 7
bc
def
ghij
klmno
pqrs
tuv
a.txt lines 2 to 7
bc
def
ghij
klmno
pqrs
tuv

com
