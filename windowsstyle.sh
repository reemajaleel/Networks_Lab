#Shell script to display the content of a directory file in windows style
if [ $# -ne 0 ]
then
	 echo "Syntax error"
	 echo "< $0 >"
	exit
fi
ter=`tty`
ls -l > lsl
exec < lsl
cd=0
while read line
do
	
 	cd=`expr $cd + 1`
 	if [ $cd -eq 1 ]
 	then
		echo $line
 		continue
 	fi
	
	i=`echo $line | cut -d " " -f 9-`
	t=`date +%d/%m/%Y"  "%r -r "$i"`
	b=`echo $line | cut -d " " -f 5`
	if [ -d "$i" ]
	then
		echo  "$t\t<DIR>\t  $b\t   $i"	   
	else
	
		echo  "$t\t     \t  $b\t   $i"	
	fi
done
	
exec < $ter	 
rm lsl


<<com

total 196
19/05/2022  12:38:37 PM IST	     	  36	   alphabet.txt
21/04/2022  11:56:09 AM IST	     	  70	   a.sh
06/06/2022  03:55:12 PM IST	     	  35	   a.txt
23/05/2022  03:07:07 PM IST	     	  0	   b
21/04/2022  01:02:59 PM IST	     	  50	   chk.sh
01/06/2022  12:38:41 PM IST	     	  482	   cmprm.sh
23/05/2022  03:20:51 PM IST	     	  649	   copyfiles.sh
26/05/2022  11:31:30 AM IST	     	  824	   countoccurence.sh
16/05/2022  03:47:12 PM IST	     	  490	   count.sh
19/05/2022  01:06:03 PM IST	     	  641	   deletelines.sh
28/04/2022  01:33:13 PM IST	     	  4	   f1
28/04/2022  01:33:32 PM IST	     	  4	   f1.txt
28/04/2022  01:31:12 PM IST	     	  4	   f2
16/05/2022  02:46:22 PM IST	     	  4	   f2.txt
01/06/2022  12:36:41 PM IST	     	  40	   f3.txt
19/05/2022  01:05:41 PM IST	     	  27	   f4.txt
26/05/2022  11:30:46 AM IST	     	  19	   f5.txt
26/05/2022  11:40:53 AM IST	     	  19	   f6.txt
26/05/2022  11:41:02 AM IST	     	  19	   f7.txt
06/06/2022  03:41:19 PM IST	     	  4357	   files.sh
07/04/2022  12:34:58 PM IST	     	  53	   for1.sh
07/04/2022  12:35:47 PM IST	     	  37	   for2.sh
07/04/2022  12:37:11 PM IST	     	  33	   for3.sh
21/04/2022  12:52:35 PM IST	     	  106	   hi
19/05/2022  12:41:53 PM IST	     	  217	   lastlinetofirst.sh
26/05/2022  12:42:34 PM IST	     	  546	   leapyear.sh
23/05/2022  03:19:30 PM IST	     	  36	   letters.txt
09/06/2022  11:47:36 AM IST	     	  0	   lsl
26/05/2022  11:41:22 AM IST	     	  828	   modifycp.sh
02/04/2022  12:16:11 PM IST	     	  193	   pgm2.sh
02/04/2022  11:44:18 AM IST	     	  101	   pgm3.sh
02/04/2022  11:50:35 AM IST	     	  189	   pgm4.sh
02/04/2022  12:09:04 PM IST	     	  196	   pgm5.sh
19/05/2022  11:32:31 AM IST	     	  817	   pid.sh
26/05/2022  12:32:46 PM IST	     	  735	   prime.sh
23/05/2022  03:10:42 PM IST	     	  325	   printlines.sh
06/06/2022  03:56:09 PM IST	     	  612	   range.sh
19/05/2022  12:42:45 PM IST	     	  46	   read.sh
02/06/2022  12:23:09 PM IST	     	  511	   reversefile.sh
11/04/2022  02:02:41 PM IST	     	  273	   sample1.sh
01/04/2022  02:58:23 PM IST	     	  186	   sample.sh
26/05/2022  01:10:27 PM IST	<DIR>	  4096	   scripts
21/04/2022  12:44:44 PM IST	     	  198	   term1.sh
21/04/2022  12:51:15 PM IST	     	  200	   term2.sh
01/06/2022  12:13:51 PM IST	     	  498	   time.sh
16/05/2022  02:53:51 PM IST	     	  644	   triangle.sh
26/05/2022  12:59:29 PM IST	     	  58	   until.sh
07/04/2022  12:28:06 PM IST	     	  58	   while.sh
09/06/2022  11:47:18 AM IST	     	  1757	   windowsstyle.sh
23/05/2022  04:02:18 PM IST	     	  773	   wordcount.sh

com

