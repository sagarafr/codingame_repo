STDOUT.sync = true # DO NOT REMOVE
# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

$road = gets.to_i # the length of the road before the gap.
$gap = gets.to_i # the length of the gap.
$platform = gets.to_i # the length of the landing platform.

$pass_gap=false

# game loop
loop do
    $speed = gets.to_i # the motorbike's speed.
    $coordX = gets.to_i # the position on the road of the motorbike.

    # Write an action using puts
    # To debug: STDERR.puts "Debug messages..."
    
    if $pass_gap == false

    	if $coordX+$speed >= $road+$gap
    		puts "JUMP"
    		$pass_gap=true
    	elsif $gap+1 < $speed
    		puts "SLOW"
    	elsif $gap+1 != $speed
    		puts "SPEED"
    	elsif $gap+1 == $speed
    		puts "WAIT"
    	end

    else
    	puts "SLOW"
    end

end
