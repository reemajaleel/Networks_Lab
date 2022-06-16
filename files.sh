<<com
Shell script to perform a menu driven program to display
a) All ordinary files
b) All directory files
c) All special files
d) All files readable to UGO
e) All files writable to UGO
f) All files executable to UGO
com




if [ $# -ne 0 ]
then
	echo "Syntax error"
	echo "$0"
	exit
fi


while :
do
echo "\n1.Ordinary files"
echo "2.Directory files"
echo "3.Special files"
echo "4.Readable files"
echo "5.Writable files"
echo "6.Executable files"
echo "-----------------------"
echo "\nselect your option:"
read opt

case $opt in

1) echo "Ordinary files\n"
for file in *
do
	if [ -f $file ]
	then
		echo "$file"
	fi
done
;;
2) echo "directory files\n"
for file in *
do
        if [ -d $file ]
        then
                echo "$file"
        fi
done
;;
3) echo "Special files\n"
for file in *
do
        if [ -s $file ]
        then
                echo "$file"
        fi
done
;;
4) echo "Readable files\n"
for file in *
do
        if [ -r $file ]
        then
                echo "$file"
        fi
done
;;
5) echo "Writable files\n"
for file in *
do
        if [ -w $file ]
        then
                echo "$file"
        fi
done
;;
6) echo "Exicutable files\n"
for file in *
do
        if [ -x $file ]
        then
                echo "$file"
        fi
done
;;
*)echo "Exiting...."
exit
;;
esac
done




<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh files.sh

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
1
Ordinary files

a.sh
a.txt
alphabet.txt
b
chk.sh
cmprm.sh
copyfiles.sh
count.sh
countoccurence.sh
deletelines.sh
f1
f1.txt
f2
f2.txt
f3.txt
f4.txt
f5.txt
f6.txt
f7.txt
files.sh
for1.sh
for2.sh
for3.sh
hi
lastlinetofirst.sh
leapyear.sh
letters.txt
lsl
modifycp.sh
pgm2.sh
pgm3.sh
pgm4.sh
pgm5.sh
pid.sh
prime.sh
printlines.sh
read.sh
reversefile.sh
sample.sh
sample1.sh
term1.sh
term2.sh
time.sh
triangle.sh
until.sh
while.sh
windowsstyle.sh
wordcount.sh

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
2
directory files

scripts

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
3
Special files

a.sh
a.txt
alphabet.txt
chk.sh
cmprm.sh
copyfiles.sh
count.sh
countoccurence.sh
deletelines.sh
f1
f1.txt
f2
f2.txt
f3.txt
f4.txt
f5.txt
f6.txt
f7.txt
files.sh
for1.sh
for2.sh
for3.sh
hi
lastlinetofirst.sh
leapyear.sh
letters.txt
lsl
modifycp.sh
pgm2.sh
pgm3.sh
pgm4.sh
pgm5.sh
pid.sh
prime.sh
printlines.sh
read.sh
reversefile.sh
sample.sh
sample1.sh
scripts
term1.sh
term2.sh
time.sh
triangle.sh
until.sh
while.sh
windowsstyle.sh
wordcount.sh

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
4
Readable files

a.sh
a.txt
alphabet.txt
b
chk.sh
cmprm.sh
copyfiles.sh
count.sh
countoccurence.sh
deletelines.sh
f1
f1.txt
f2
f2.txt
f3.txt
f4.txt
f5.txt
f6.txt
f7.txt
files.sh
for1.sh
for2.sh
for3.sh
hi
lastlinetofirst.sh
leapyear.sh
letters.txt
lsl
modifycp.sh
pgm2.sh
pgm3.sh
pgm4.sh
pgm5.sh
pid.sh
prime.sh
printlines.sh
read.sh
reversefile.sh
sample.sh
sample1.sh
scripts
term1.sh
term2.sh
time.sh
triangle.sh
until.sh
while.sh
windowsstyle.sh
wordcount.sh

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
5
Writable files

a.sh
a.txt
alphabet.txt
b
chk.sh
cmprm.sh
copyfiles.sh
count.sh
countoccurence.sh
deletelines.sh
f1
f1.txt
f2
f2.txt
f3.txt
f4.txt
f5.txt
f6.txt
f7.txt
files.sh
for1.sh
for2.sh
for3.sh
hi
lastlinetofirst.sh
leapyear.sh
letters.txt
lsl
modifycp.sh
pgm2.sh
pgm3.sh
pgm4.sh
pgm5.sh
pid.sh
prime.sh
printlines.sh
read.sh
reversefile.sh
sample.sh
sample1.sh
scripts
term1.sh
term2.sh
time.sh
triangle.sh
until.sh
while.sh
windowsstyle.sh
wordcount.sh

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
6
Exicutable files

scripts

1.Ordinary files
2.Directory files
3.Special files
4.Readable files
5.Writable files
6.Executable files
-----------------------

select your option:
7
Exiting....

com
