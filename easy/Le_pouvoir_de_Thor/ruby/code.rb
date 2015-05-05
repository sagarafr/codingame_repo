STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# $LX: the X position of the light of power
# $LY: the Y position of the light of power
# $TX: Thor's starting X position
# $TY: Thor's starting Y position
$LX, $LY, $TX, $TY = gets.split(" ").collect {|x| x.to_i}

# game loop
loop do
    $E = gets.to_i # The level of Thor's remaining energy, representing the number of moves he can still make.
    
    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    if $TX < $LX and $TY < $LY and $TX+1 != 40 and $TY+1 != 18
        $TX+=1
        $TY+=1
        puts "SE"
    elsif $TX < $LX and $TY > $LY and $TX+1 != 40 and $TY-1 != -1
        $TX+=1
        $TY-=1
        puts "NE"
    elsif $TX > $LX and $TY < $LY and $TX-1 != -1 and $TY+1 != 18
        $TX-=1
        $TY+=1
        puts "SW"
    elsif $TX > $LX and $TY > $LY and $TX-1 != -1 and $TY-1 != -1
        $TX-=1
        $TY-=1
        puts "NW"
    elsif $TX < $LX and $TX+1 != 40
        $TX+=1
        puts "E"
    elsif $TX > $LX and $TX-1 != -1
        $TX-=1
        puts "W"
    elsif $TY < $LY and $TY+1 != 18
        $TY+=1
        puts "S"
    elsif $TY > $LY and $TY-1 != -1
        $TY-=1
        puts "N"
    end
end
