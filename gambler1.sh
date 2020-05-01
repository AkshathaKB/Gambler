#!/bin/bash -x
cash=100
goal=200
bet=20
numberOfBets=0
iterations=0
while [[ $cash -gt 0 && $cash -lt $goal && $iterations -lt 10 ]] 
do
 randomCheck=$(( RANDOM%2 ))
 if [ $randomCheck -eq 1 ]
 then
    cash=$(( $cash+$bet+20 ))
    (( numberOfBets++ ))
 else
    cash=$(( $cash-$bet-20 )) 
    (( numberOfBets++ ))
 fi
    (( iterations++ ))
done
if [ $cash -ge $goal ]
then 
   echo "You Won"
else
   echo "You Loose"
fi
if(($cash==0))
then
echo " Sorry, you are broke!"
fi
echo "Number of Bets Are:-"$numberOfBets
echo "Number of Iterations are:-"$iterations
echo "Cash is:-"$cash

