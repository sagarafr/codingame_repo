# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# road: the length of the road before the gap.
read R
# G: the length of the gap.
read G
# L: the length of the landing platform.
read L

pass_gap=0

# game loop
while true; do
    # S: the motorbike's speed.
    read S
    # X: the position on the road of the motorbike.
    read X

    # Write an action using echo
    # To debug: echo "Debug messages..." >&2

    if [ $pass_gap -eq 0 ]; then
    
    	if [ $(($X+$S)) -ge $(($R+$G)) ]; then
    		echo "JUMP"
    		pass_gap=1
    	elif [ $(($G+1)) -lt $S ] ;then
    		echo "SLOW"
    	elif [ $(($G+1)) -ne $S ] ;then
    		echo "SPEED"
    	elif [ $(($G+1)) -eq $S ] ;then
    		echo "WAIT"
    	fi

    else
    	echo "SLOW"
    fi

done
