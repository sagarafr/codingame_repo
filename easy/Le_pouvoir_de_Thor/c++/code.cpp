#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

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
    cin >> LX >> LY >> TX >> TY; cin.ignore();

    // game loop
    while (1) 
    {
        int E; // The level of Thor's remaining energy, representing the number of moves he can still make.
        cin >> E; cin.ignore();

        // Write an action using cout. DON'T FORGET THE "<< endl"
        // To debug: cerr << "Debug messages..." << endl;

        if((TX < LX)&&(TY < LY)&&(TX+1 != 40)&&(TY+1 != 18))
        {
            ++TX;
            ++TY;
            cout << "SE" << endl;
        }
        else if((TX < LX)&&(TY > LY)&&(TX+1 != 40)&&(TY-1 != -1))
        {
            ++TX;
            --TY;
            cout << "NE" << endl;
        }
        else if((TX > LX)&&(TY < LY)&&(TX-1 != -1)&&(TY+1 != 18))
        {
            --TX;
            ++TY;
            cout << "SW" << endl;
        }
        else if((TX > LX)&&(TY > LY)&&(TX-1 != -1)&&(TY-1 != -1))
        {
            --TX;
            --TY;
            cout << "NW" << endl;
        }
        else if((TX < LX)&&(TX+1 != 40))
        {
            ++TX;
            cout << "E" << endl;
        }
        else if((TX > LX)&&(TX-1 != -1))
        {
            --TX;
            cout << "W" << endl;
        }
        else if((TY < LY)&&(TY+1 != 18))
        {
            ++TY;
            cout << "S" << endl;
        }
        else if((TY > LY)&&(TY-1 != -1))
        {
            --TY;
            cout << "N" << endl;
        }
    }
}
