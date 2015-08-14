import sys, math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

R = int(input()) # the length of the road before the gap.
G = int(input()) # the length of the gap.
L = int(input()) # the length of the landing platform.

pass_gap=0

# game loop
while 1:
    S = int(input()) # the motorbike's speed.
    X = int(input()) # the position on the road of the motorbike.
    if pass_gap==0:
        if X+S >= R+G:
            print("JUMP")
            pass_gap=1
        elif G+1 < S:
            print("SLOW")
        elif G+1 != S:
            print("SPEED")
        elif G+1 == S:
            print("WAIT")
    else:
        print("SLOW")
