#printing good morning, good afternoon and good evening according to time.
if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
h=$(date +"%H")
t=$(date +"%T")
echo "The current time is $t"
if [ $h -le 12 ]
then
echo good morning
elif [ $h -gt 12 -a $h -le 16 ]
then 
echo good afternoon
else [ $h -gt 16 -a $h -le 24 ]
echo good evening
fi



<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh time.sh
The current time is 11:50:34
good morning

com
