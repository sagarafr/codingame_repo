import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

road = int(raw_input()) # the length of the road before the gap.
gap = int(raw_input()) # the length of the gap.
platform = int(raw_input()) # the length of the landing platform.

pass_gap=0

# game loop
while 1:
    speed = int(raw_input()) # the motorbike's speed.
    coordX = int(raw_input()) # the position on the road of the motorbike.

    if pass_gap==0:
        if coordX+speed >= road+gap:
            print "JUMP"
            pass_gap=1
        elif gap+1 < speed:
            print "SLOW"
        elif gap+1 != speed:
            print "SPEED"
        elif gap+1 == speed:
            print "WAIT"
    else:
        print "SLOW"
