// Auto-generated code below aims at helping you parse
// the standard input according to the problem statement.
// ---
// Hint: You can use the debug stream to print initialTX and initialTY, if Thor seems not follow your orders.
program Answer;
{$H+}
uses sysutils, classes, math;

// Helper to read a line and split tokens
procedure ParseIn(Inputs: TStrings) ;
var Line : string;
begin
    readln(Line);
    Inputs.Clear;
    Inputs.Delimiter := ' ';
    Inputs.DelimitedText := Line;
end;

var
    lightX : Int32; // the X position of the light of power
    lightY : Int32; // the Y position of the light of power
    initialTX : Int32; // Thor's starting X position
    initialTY : Int32; // Thor's starting Y position
    remainingTurns : Int32;
    Inputs: TStringList;

procedure SouthEast();
begin
    initialTX:=initialTX+1;
    initialTY:=initialTY+1;
    writeln('SE');
end;

procedure NorthEast();
begin
    initialTX:=initialTX+1;
    initialTY:=initialTY-1;
    writeln('NE');
end;

procedure SouthWest();
begin
    initialTX:=initialTX-1;
    initialTY:=initialTY+1;
    writeln('SW');
end;

procedure NorthWest();
begin
    initialTX:=initialTX-1;
    initialTY:=initialTY-1;
    writeln('NW');
end;

procedure East();
begin
    initialTX:=initialTX+1;
    writeln('E');
end;

procedure West();
begin
    initialTX:=initialTX-1;
    writeln('W');
end;

procedure South();
begin
    initialTY:=initialTY+1;
    writeln('S');
end;

procedure North();
begin
    initialTY:=initialTY-1;
    writeln('N');
end;

begin
    Inputs := TStringList.Create;
    ParseIn(Inputs);
    lightX := StrToInt(Inputs[0]);
    lightY := StrToInt(Inputs[1]);
    initialTX := StrToInt(Inputs[2]);
    initialTY := StrToInt(Inputs[3]);

    // game loop
    while true do
    begin
        ParseIn(Inputs);
        remainingTurns := StrToInt(Inputs[0]);

        // Write an action using writeln()
        // To debug: writeln(StdErr, 'Debug messages...');
        if((initialTX < lightX) and (initialTY < lightY) and (initialTX+1 <> 40) and (initialTY+1 <> 18))
        then SouthEast()
        else if((initialTX < lightX) and (initialTY > lightY) and (initialTX+1 <> 40)and (initialTY-1 <> -1))
        then NorthEast()
        else if ((initialTX > lightX) and (initialTY < lightY) and (initialTX-1 <> -1) and (initialTY+1 <> 18))
        then SouthWest()
        else if ((initialTX > lightX) and (initialTY > lightY) and (initialTX-1 <> -1) and (initialTY-1 <> -1))
        then NorthWest()
        else if ((initialTX < lightX) and (initialTX+1 <> 40))
        then East()
        else if ((initialTX > lightX) and (initialTX-1 <> -1))
        then West()
        else if ((initialTY < lightY) and (initialTY+1 <> 18))
        then South()
        else if((initialTY > lightY) and (initialTY-1 <> -1))
        then North();

        {writeln('SE');} // A single line providing the move to be made: N NE E SE S SW W or NW
        
        flush(StdErr); flush(output); // DO NOT REMOVE
    end;
end.
