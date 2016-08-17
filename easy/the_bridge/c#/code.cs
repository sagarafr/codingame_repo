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
        int road = int.Parse(Console.ReadLine()); // the length of the road before the gap.
        int gap = int.Parse(Console.ReadLine()); // the length of the gap.
        int platform = int.Parse(Console.ReadLine()); // the length of the landing platform.
        int pass_gap=0;

        // game loop
        while (true)
        {
            int speed = int.Parse(Console.ReadLine()); // the motorbike's speed.
            int coordX = int.Parse(Console.ReadLine()); // the position on the road of the motorbike.

            // Write an action using Console.WriteLine()
            // To debug: Console.Error.WriteLine("Debug messages...");

            if(pass_gap == 0)
            {
                if(coordX+speed >= road+gap)
                {
                    Console.WriteLine("JUMP");
                    pass_gap=1;
                }
                else if(gap+1 < speed)
                {
                    Console.WriteLine("SLOW");
                }
                else if(gap+1 != speed)
                {
                    Console.WriteLine("SPEED");
                }
                else if(gap+1 == speed)
                {
                    Console.WriteLine("WAIT");
                }
            }
            else
            {
                Console.WriteLine("SLOW");
            }
        }
    }
}
