#Shell script to display the content of a directory file in windows style


term=`tty`

for i in *
do
	
ls -l $i > lsl
exec < lsl
c=0
while read line
do

	for l in $line
	do
		c=`expr $c + 1`
		
		if [ $c -eq 5 ]
		then
			b=$l
		
		elif [ $c -eq 6 ]
		then
			m=$l
		
        elif [ $c -eq 7 ]
        then   
        	d=$l
		 
		elif [ $c -eq 8 ]
		then
        	t=$l
        fi  			
	done
done
	
	if [ -d $i ]
	then
		echo  "$m $d $t\t<DIR>\t $b\t  $i"	   
	else
		echo  "$m $d $t\t     \t $b\t  $i"	
	fi
exec < $term 
done
rm lsl


<<com

Apr 21 11:56	     	 70	  a.sh
May 19 12:38	     	 36	  alphabet.txt
Apr 21 13:02	     	 50	  chk.sh
May 16 14:54	     	 470	  cmprm.sh
May 16 15:47	     	 490	  count.sh
May 19 13:06	     	 641	  deletelines.sh
Apr 28 13:33	     	 4	  f1
Apr 28 13:33	     	 4	  f1.txt
Apr 28 13:31	     	 4	  f2
May 16 14:46	     	 4	  f2.txt
May 16 15:22	     	 15	  f3.txt
May 19 13:05	     	 27	  f4.txt
Apr 7 12:34	     	 53	  for1.sh
Apr 7 12:35	     	 37	  for2.sh
Apr 7 12:37	     	 33	  for3.sh
Apr 21 12:52	     	 106	  hi
May 19 12:41	     	 217	  lastlinetofirst.sh
May 16 14:20	     	 561	  leapyear.sh
Apr 2 12:16	     	 193	  pgm2.sh
Apr 2 11:44	     	 101	  pgm3.sh
Apr 2 11:50	     	 189	  pgm4.sh
Apr 2 12:09	     	 196	  pgm5.sh
May 19 11:32	     	 817	  pid.sh
May 5 13:05	     	 543	  prime.sh
May 19 12:42	     	 46	  read.sh
May 19 12:50	     	 405	  reversefile.sh
Apr 1 14:58	     	 186	  sample.sh
Apr 11 14:02	     	 273	  sample1.sh
ksb 193 Apr	<DIR>	 ksb	  scripts
Apr 21 12:44	     	 198	  term1.sh
Apr 21 12:51	     	 200	  term2.sh
May 19 12:20	     	 457	  time.sh
May 16 14:53	     	 644	  triangle.sh
Apr 7 12:33	     	 58	  until.sh
Apr 7 12:28	     	 58	  while.sh
May 23 14:27	     	 535	  windowsstyle.sh

com

