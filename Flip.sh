echo "Welcome to Flip Coin Simulator"
flip=0;
random=$(( RANDOM % 2 ));

if [ $flip -eq $random ]
then
	echo "Head";
else
	echo "Tail";
fi
