import sys
import math

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

n = int(input())  # the number of temperatures to analyse
temps = input()  # the n temperatures expressed as integers ranging from -273 to 5526

# Write an action using print
# To debug: print("Debug messages...", file=sys.stderr)

if n == 0:
    print('0')
else:
    temps = temps.split(' ')
    tmp = [int(x) for x in temps if int(x) >= 0]
    minimum_positive_value = 5526
    minimum_negative_value = -5526

    if len(tmp) > 0:
        minimum_positive_value = min(tmp, key = lambda x : abs(x - 0))
    tmp = [int(x) for x in temps if int(x) <= 0]

    if len(tmp) > 0:
        minimum_negative_value = min(tmp, key = lambda x : abs(x - 0))

    if abs(minimum_positive_value - minimum_negative_value) == 0:
        print(minimum_positive_value)
    else:
        print(min([minimum_positive_value, minimum_negative_value], key = lambda x : abs(x - 0)))
