import sys, math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# LX: the X position of the light of power
# LY: the Y position of the light of power
# TX: Thor's starting X position
# TY: Thor's starting Y position
LX, LY, TX, TY = [int(i) for i in raw_input().split()]

# game loop
while 1:
    E = int(raw_input()) # The level of Thor's remaining energy, representing the number of moves he can still make.
    
    if TX < LX and TY < LY and TX+1 != 40 and TY+1 != 18:
        TX+=1
        TY+=1
        print "SE"
    elif TX < LX and TY > LY and TX+1 != 40 and TY-1 != -1:
        TX+=1
        TY-=1
        print "NE"
    elif TX > LX and TY < LY and TX-1 != -1 and TY+1 != 18:
        TX-=1
        TY+=1
        print "SW"
    elif TX > LX and TY > LY and TX-1 != -1 and TY-1 != -1:
        TX-=1
        TY-=1
        print "NW"
    elif TX < LX and TX+1 != 40:
        TX+=1
        print "E"
    elif TX > LX and TX-1 != -1:
        TX-=1
        print "W"
    elif TY < LY and TY+1 != 18:
        TY+=1
        print "S"
    elif TY > LY and TY-1 != -1:
        TY-=1
        print "N"
