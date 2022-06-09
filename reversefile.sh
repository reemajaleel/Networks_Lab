#Shell script to display a file from last line to first line
if [ $# -ne 1 ]
then
echo "Syntax error, syntax is <$0> <filename>"
exit
fi
file=$1
ter=`tty`
exec < $file
c=0
while read line
do
c=`expr $c + 1`
done
exec < $ter
while [ 0 -le $c ]
do
cat $file | head -$c | tail +$c
c=`expr $c - 1`
done


<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ cat alphabet.txt
a
bc
def
ghij
klmno
pqrs
tuv
wx
y
z

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh reversefile.sh alphabet.txt
z
y
wx
tuv
pqrs
klmno
ghij
def
bc
a

com
