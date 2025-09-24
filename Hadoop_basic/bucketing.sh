#!usr/bin/bash
echo "Please give the score of the student:"
read score

if [ "$score" -ge 1 -a "$score" -le 25 ]; then
        echo "in bucket1"
elif [ "$score" -ge 26 -a "$score" -le 50 ]; then
       echo "in bucket2"
elif [ "$score" -ge 51 -a "$score" -le 75 ]; then
       echo "in bucket3"
else
        echo "in bucket4"
fi


