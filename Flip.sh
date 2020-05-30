echo "Welcome to Flip Coin Simulator";

flip=0;
isHeadWon=0;
isTailWon=0;

while [[ $isHeadWon -lt 21 && $isTailWon -lt 21 ]]
do
	random=$(( RANDOM % 2 ));

	if [ $flip -eq $random ]
	then
		isHeadWon=$(( isHeadWon + 1 ));
	else
		isTailWon=$(( isTailWon + 1 ));
	fi
done

echo "Total Number Head Won:" $isHeadWon;
echo "Total Number Tail Won:" $isTailWon;

if [[ $isHeadWon -gt $isTailWon ]]
then
	difference=$(($isHeadWon - $isTailWon ));
	echo "Head Wins times more than Tail by" $difference;
elif [[ $isHeadwon -eq $isTailWon ]]
then
	echo "Tie between Head and Tail";
else
	difference=$(($isTailWon - $isHeadWon ));
	echo "Tail Wins times more than Head by" $difference;
fi
