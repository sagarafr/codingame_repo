#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main()
{
    int LX; // the X position of the light of power
    int LY; // the Y position of the light of power
    int TX; // Thor's starting X position
    int TY; // Thor's starting Y position
    scanf("%d%d%d%d", &LX, &LY, &TX, &TY);

    // game loop
    while (1)
    {
        int E; // The level of Thor's remaining energy, representing the number of moves he can still make.
        scanf("%d", &E);

        if((TX < LX)&&(TY < LY)&&(TX+1 != 40)&&(TY+1 != 18))
        {
            ++TX;
            ++TY;
            printf("SE\n");
        }
        else if((TX < LX)&&(TY > LY)&&(TX+1 != 40)&&(TY-1 != -1))
        {
            ++TX;
            --TY;
            printf("NE\n");
        }
        else if((TX > LX)&&(TY < LY)&&(TX-1 != -1)&&(TY+1 != 18))
        {
            --TX;
            ++TY;
            printf("SW\n");
        }
        else if((TX > LX)&&(TY > LY)&&(TX-1 != -1)&&(TY-1 != -1))
        {
            --TX;
            --TY;
            printf("NW\n");
        }
        else if((TX < LX)&&(TX+1 != 40))
        {
            ++TX;
            printf("E\n");
        }
        else if((TX > LX)&&(TX-1 != -1))
        {
            --TX;
            printf("W\n");
        }
        else if((TY < LY)&&(TY+1 != 18))
        {
            ++TY;
            printf("S\n");
        }
        else if((TY > LY)&&(TY-1 != -1))
        {
            --TY;
            printf("N\n");
        }
    }
}
