echo "Welcome to Flip Coin Simulator";

flip=0;
isHeadWon=0;
isTailWon=0;
winDiff=0;

while [[ $isHeadWon -lt 21 && $isTailWon -lt 21 ]]
do
	random=$(( RANDOM % 2 ));

	if [ $flip -eq $random ]
	then
		isHeadWon=$(( $isHeadWon + 1 ));
	else
		isTailWon=$(( $isTailWon + 1 ));
	fi
done

echo "Total Number Head Won:" $isHeadWon;
echo "Total Number Tail Won:" $isTailWon;

if [[ $isHeadWon -gt $isTailWon ]]
then
	echo "Head Wins";
elif [[ $isHead -eq $isTailWon ]]
then
	echo "Tie between Head and Tail";
	while [[ $winDiff -lt 2 ]]
	do
		 random=$(( RANDOM % 2 ));

	   if [ $isHeadwon -eq $random ]
   	then
      	echo "Head";
      	isHeadWon=$(( $isHeadWon + 1 ));
			winDiff=$(( $winDiff + 1 ));
   	else
      	echo "Tail";
      	isTailWon=$(( $isTailWon + 1 ));
			winDiff=$(( $winDiff + 1 ));
   	fi
	done

else
	echo "Tail Wins";
fi
