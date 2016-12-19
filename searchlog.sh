#!/bin/bash
 # echo $(date +'%d/%b/%Y' --date=$i+'days ago')

for ((i=0;i<=$2;i++))
do
echo "--------------------------------------------------------" >> /home/shannon/logReport.txt

echo $( grep "$(date +'%d/%b/%Y' --date="+$i+"'days ago')" $1 | grep "ERROR" | wc -l) 'Occurences of "ERROR"' $i 'day(s) ago' >> /home/shannon/logReport.txt

echo $( grep "$(date +'%d/%b/%Y' --date="+$i+"'days ago')" $1 | grep "error" | wc -l) 'Occurences of "error"' $i 'day(s) ago' >> /home/shannon/logReport.txt

echo $( grep "$(date +'%d/%b/%Y' --date="+$i+"'days ago')" $1 | grep "Error" | wc -l) 'Occurences of "Error"' $i 'day(s) ago' >> /home/shannon/logReport.txt

echo $( grep "$(date +'%d/%b/%Y' --date="+$i+"'days ago')" $1 | grep "EE" | wc -l) 'Occurences of "EE"' $i 'day(s) ago' >> /home/shannon/logReport.txt

echo $( grep "$(date +'%d/%b/%Y' --date="+$i+"'days ago')" $1 | grep "404" | wc -l) 'Occurences of "404"' $i 'day(s) ago' >> /home/shannon/logReport.txt

done
