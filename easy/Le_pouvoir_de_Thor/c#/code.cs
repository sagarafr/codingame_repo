using System;
using System.Linq;
using System.IO;
using System.Text;
using System.Collections;
using System.Collections.Generic;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Player
{
    static void Main(string[] args)
    {
        string[] inputs = Console.ReadLine().Split(' ');
        int LX = int.Parse(inputs[0]); // the X position of the light of power
        int LY = int.Parse(inputs[1]); // the Y position of the light of power
        int TX = int.Parse(inputs[2]); // Thor's starting X position
        int TY = int.Parse(inputs[3]); // Thor's starting Y position

        // game loop
        while (true)
        {
            int E = int.Parse(Console.ReadLine()); // The level of Thor's remaining energy, representing the number of moves he can still make.

            // Write an action using Console.WriteLine()
            // To debug: Console.Error.WriteLine("Debug messages...");

            if((TX < LX)&&(TY < LY)&&(TX+1 != 40)&&(TY+1 != 18))
            {
                ++TX;
                ++TY;
                Console.WriteLine("SE");
            }
            else if((TX < LX)&&(TY > LY)&&(TX+1 != 40)&&(TY-1 != -1))
            {
                ++TX;
                --TY;
                Console.WriteLine("NE");
            }
            else if((TX > LX)&&(TY < LY)&&(TX-1 != -1)&&(TY+1 != 18))
            {
                --TX;
                ++TY;
                Console.WriteLine("SW");
            }
            else if((TX > LX)&&(TY > LY)&&(TX-1 != -1)&&(TY-1 != -1))
            {
                --TX;
                --TY;
                Console.WriteLine("NW");
            }
            else if((TX < LX)&&(TX+1 != 40))
            {
                ++TX;
                Console.WriteLine("E");
            }
            else if((TX > LX)&&(TX-1 != -1))
            {
                --TX;
                Console.WriteLine("W");
            }
            else if((TY < LY)&&(TY+1 != 18))
            {
                ++TY;
                Console.WriteLine("S");
            }
            else if((TY > LY)&&(TY-1 != -1))
            {
                --TY;
                Console.WriteLine("N");
            }
        }
    }
}
