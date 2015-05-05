import java.util.*;
import java.io.*;
import java.math.*;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
class Player
{

    public static void main(String args[])
    {
        Scanner in = new Scanner(System.in);
        int LX = in.nextInt(); // the X position of the light of power
        int LY = in.nextInt(); // the Y position of the light of power
        int TX = in.nextInt(); // Thor's starting X position
        int TY = in.nextInt(); // Thor's starting Y position

        // game loop
        while (true)
        {
            int E = in.nextInt(); // The level of Thor's remaining energy, representing the number of moves he can still make.

            if((TX < LX)&&(TY < LY)&&(TX+1 != 40)&&(TY+1 != 18))
            {
                ++TX;
                ++TY;
                System.out.println("SE");
            }
            else if((TX < LX)&&(TY > LY)&&(TX+1 != 40)&&(TY-1 != -1))
            {
                ++TX;
                --TY;
                System.out.println("NE");
            }
            else if((TX > LX)&&(TY < LY)&&(TX-1 != -1)&&(TY+1 != 18))
            {
                --TX;
                ++TY;
                System.out.println("SW");
            }
            else if((TX > LX)&&(TY > LY)&&(TX-1 != -1)&&(TY-1 != -1))
            {
                --TX;
                --TY;
                System.out.println("NW");
            }
            else if((TX < LX)&&(TX+1 != 40))
            {
                ++TX;
                System.out.println("E");
            }
            else if((TX > LX)&&(TX-1 != -1))
            {
                --TX;
                System.out.println("W");
            }
            else if((TY < LY)&&(TY+1 != 18))
            {
                ++TY;
                System.out.println("S");
            }
            else if((TY > LY)&&(TY-1 != -1))
            {
                --TY;
                System.out.println("N");
            }
        }
    }
}
