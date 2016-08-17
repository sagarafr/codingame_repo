# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

def string_to_bin(string):
    return "".join("{0:07b}".format(ord(cara)) for cara in string)

def generate_str(cara, nb_occur):
    return "{0} {1}".format("00" if cara == '0' else '0', str('0' * nb_occur))

def bin_to_chuck(bin_str):
    r_chuck = ""
    tmp_bin = bin_str[0]
    cpt_tmp_bin = 1

    for letter in range(1, len(bin_str)):
        if tmp_bin == bin_str[letter]:
            cpt_tmp_bin += 1
        elif tmp_bin != bin_str[letter]:
            r_chuck += str(generate_str(tmp_bin, cpt_tmp_bin) + ' ')
            tmp_bin = bin_str[letter]
            cpt_tmp_bin = 1

    return r_chuck + generate_str(tmp_bin, cpt_tmp_bin)

# Write an action using print
# To debug: print("Debug messages...", file=sys.stderr)

print(bin_to_chuck(string_to_bin(input())))
