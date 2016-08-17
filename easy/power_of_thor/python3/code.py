import sys, math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# LX: the X position of the light of power
# LY: the Y position of the light of power
# TX: Thor's starting X position
# TY: Thor's starting Y position
# 0 ≤ LX < 40
# 0 ≤ LY < 18


LX, LY, TX, TY = [int(i) for i in input().split()]
# game loop
while 1:
    E = int(input()) # The level of Thor's remaining energy, representing the number of moves he can still make.

    if TX < LX and TY < LY and TX+1 != 40 and TY+1 != 18:
        TX+=1
        TY+=1
        print("SE")
    elif TX < LX and TY > LY and TX+1 != 40 and TY-1 != -1:
        TX+=1
        TY-=1
        print("NE")
    elif TX > LX and TY < LY and TX-1 != -1 and TY+1 != 18:
        TX-=1
        TY+=1
        print("SW")
    elif TX > LX and TY > LY and TX-1 != -1 and TY-1 != -1:
        TX-=1
        TY-=1
        print("NW")
    elif TX < LX and TX+1 != 40:
        TX+=1
        print("E")
    elif TX > LX and TX-1 != -1:
        TX-=1
        print("W")
    elif TY < LY and TY+1 != 18:
        TY+=1
        print("S")
    elif TY > LY and TY-1 != -1:
        TY-=1
        print("N")
