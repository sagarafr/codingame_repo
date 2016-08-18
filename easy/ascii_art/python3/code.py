import string

# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

L = int(input())
H = int(input())
T = input()
alphabetic_tab = [[0] * (L * 27)] * H
pratical_alphabetic_tab = [["0"] * (H * L)] * 27

for i in range(H):
    ROW = input()
    alphabetic_tab[i] = ROW

for h in range(H):
    for letter in range(len(T)):
        if T[letter] in string.ascii_uppercase:
            number = ord(T[letter]) - ord("A")
        elif T[letter] in string.ascii_lowercase:
            number = ord(T[letter]) - ord("a")
        else:
            number = 26

        for l in range(L):
            if l == L - 1 and letter == len(T) - 1:
                print(alphabetic_tab[h][(number) * L + l], end="\n")
            else:
                print(alphabetic_tab[h][(number) * L + l], end="")
