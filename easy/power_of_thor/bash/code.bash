# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# LX: the X position of the light of power
# LY: the Y position of the light of power
# TX: Thor's starting X position
# TY: Thor's starting Y position
read LX LY TX TY

# game loop
while true; do
    # E: The level of Thor's remaining energy, representing the number of moves he can still make.
    read E

    if (($TX < $LX))&&(($TY < $LY))&&(($(($TX+1)) != 40))&&(($(($TY+1)) != 18)); then
    	TX=$(($TX+1))
    	TY=$(($TY+1))
    	echo "SE"
    elif (($TX < $LX))&&(($TY > $LY))&&(($(($TX+1)) != 40))&&(($(($TY+1)) != -1)); then
    	TX=$(($TX+1))
    	TY=$(($TY-1))
    	echo "NE"
    elif (($TX > $LX))&&(($TY < $LY))&&(($(($TX+1)) != -1))&&(($(($TY+1)) != 18)); then
    	TX=$(($TX-1))
    	TY=$(($TY+1))
    	echo "SW"
    elif (($TX > $LX))&&(($TY > $LY))&&(($(($TX+1)) != -1))&&(($(($TY+1)) != -1)); then
    	TX=$(($TX-1))
    	TY=$(($TY-1))
    	echo "NW"
    elif (($TX < $LX))&&(($(($TX+1)) != 40)); then
    	TX=$(($TX+1))
    	echo "E"
    elif (($TX > $LX))&&(($(($TX-1)) != -1)); then
    	TX=$(($TX-1))
    	echo "W"
    elif (($TX < $LY))&&(($(($TY+1)) != 18)); then
    	TY=$(($TY+1))
    	echo "S"
    elif (($TY > $LY))&&(($(($TY-1)) != -1)); then
    	TY=$(($TY-1))
    	echo "N"
    fi
done
