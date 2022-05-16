#printing good morning, good afternoon and good evening according to time.
if [ $# -ne 0 ]
then
echo "Syntax error"
exit
fi
h=$(date +"%H")
if [ $h -gt 6 -a $h -le 12 ]
then
echo good morning
elif [ $h -gt 12 -a $h -le 16 ]
then 
echo good afternoon
elif [ $h -gt 16 -a $h -le 20 ]
then
echo good evening
else
echo good night
fi



<<com

ksb@ksb-ThinkCentre-Edge72:~/Reema/Networks/Script$ sh time.sh
good afternoon

com
