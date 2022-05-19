#removing all ordinary files with filename.pid of shell
if [ $# -ne 0 ]
then
	echo "Syntax is <$0>"
	exit 1
fi
for i in *
do
if [ -f $i ]
then
	newname="$i.$$"
	mv $i $newname
fi
done 
exit 0



<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script/scripts$ ls -l
total 16
-rw-rw-r-- 1 ksb ksb 193 Apr  2 12:16 pgm2.sh
-rw-rw-r-- 1 ksb ksb 101 Apr  2 11:44 pgm3.sh
-rw-rw-r-- 1 ksb ksb 192 Apr  7 13:11 pid.sh
-rw-rw-r-- 1 ksb ksb 543 May  5 13:05 prime.sh

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script/scripts$ sh pid.sh

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script/scripts$ ls -l
total 16
-rw-rw-r-- 1 ksb ksb 193 Apr  2 12:16 pgm2.sh.9922
-rw-rw-r-- 1 ksb ksb 101 Apr  2 11:44 pgm3.sh.9922
-rw-rw-r-- 1 ksb ksb 192 Apr  7 13:11 pid.sh.9922

com
-rw-rw-r-- 1 ksb ksb 543 May  5 13:05 prime.sh.9922

com
