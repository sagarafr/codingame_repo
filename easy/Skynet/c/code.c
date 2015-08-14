#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main()
{
    int road; // the length of the road before the gap.
    scanf("%d", &road);
    int gap; // the length of the gap.
    scanf("%d", &gap);
    int platform; // the length of the landing platform.
    scanf("%d", &platform);

    int pass_gap=0;

    // game loop
    while (1) {
        int speed; // the motorbike's speed.
        scanf("%d", &speed);
        int coordX; // the position on the road of the motorbike.
        scanf("%d", &coordX);

        // Write an action using printf(). DON'T FORGET THE TRAILING \n
        // To debug: fprintf(stderr, "Debug messages...\n");

        if(pass_gap == 0)
        {
            if(coordX+speed >= road+gap)
            {
                printf("JUMP\n");
                pass_gap=1;
            }
            else if(gap+1 < speed)
            {
                printf("SLOW\n");
            }
            else if(gap+1 != speed)
            {
                printf("SPEED\n");
            }
            else if(gap+1 == speed)
            {
                printf("WAIT\n");
            }
        }
        else
        {
            printf("SLOW\n");
        }
    }

    return 0;
}
