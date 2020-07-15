#!/bin/bash
#UC1
guess=$(( RANDOM% 2))
if [ $guess -eq 1 ]
then
        echo "HEAD"
else
        echo "TAIL"
fi

#UC2
read -p "Enter the range to flip: " num
val=1;
count_head=0;
count_tail=0;
while [ $val -le $num ]
do
guess=$(( RANDOM% 2))
if [ $guess -eq 1 ]
then
        ((count_head++))
else
        ((count_tail++))
fi
((val++))
done
echo "Number of times Heads won: "$count_head
echo "Number of times Tails won: "$count_tail

#UC3
flag=1;
Hcount=0;
Lcount=0;
while [ $flag -eq 1 ]
do
guess=$(( RANDOM% 2))
if [ $guess -eq 1 ]
then
        Hcount=`expr $Lcount + 1`
else
        Lcount=`expr $Lcount + 1`
fi
        if [[ $Hcount -eq 21 ]] || [[ $Lcount -eq 21 ]]
        then
        break;
        else
        continue;
        fi
done
if [[ $Hcount -gt $Lcount ]]
then
        echo "Heads won this many times: "$Hcount
elif [[ $Lcount -gt $Hcount ]]
then
        echo "Tails won this many times: "$Lcount
else
        echo "It's a tie between them "
fi
