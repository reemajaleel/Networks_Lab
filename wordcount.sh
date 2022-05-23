#Shell script to count the occurrence of words in a file in a set of files
if [ $# -eq 0 ]
then 
	echo "Syntax error"
	echo "$0 file1 file2 etc..."
	exit
	fi

k=$#
j=0
echo "Enter a word : "
read word


ter=`tty`
while [ $k -gt 0 ]
do
fname=$1

exec < $fname
i=0
while read line
do
	for l in $line
	do
		echo $l | grep $word > grp
		if [ $? -eq 0 ]
		then
			i=`expr $i + 1`
		fi
	done
done

j=`expr $j + $i`
echo "Occurrences of word $word in $fname => $i"
shift
k=`expr $k - 1`
exec < $ter
done

echo "Total occurrences word $word => $j"
rm grp


<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh wordcount.sh f1.txt f2.txt
Enter a word : 
abc
Occurrences of word abc in f1.txt => 1
Occurrences of word abc in f2.txt => 1
Total occurrences word abc => 2

com
