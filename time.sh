#printing good morning, good afternoon and good evening and good night according to time.
if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
h=$(date +"%H")
t=$(date +"%T")
echo "The current time is $t"
if [ $h -lt 12 ]
then
echo good morning
elif [ $h -ge 12 -a $h -lt 16 ]
then 
echo good afternoon
elif [ $h -ge 16 -a $h -lt 24 ]
then
echo good evening
else
echo good night
fi



<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh time.sh
The current time is 11:50:34
good morning

com
