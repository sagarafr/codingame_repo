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
    int road; // the length of the road before the gap.
    cin >> road; cin.ignore();
    int gap; // the length of the gap.
    cin >> gap; cin.ignore();
    int platform; // the length of the landing platform.
    cin >> platform; cin.ignore();

    bool pass_gap=false;

    // game loop
    while (1) {
        int speed; // the motorbike's speed.
        cin >> speed; cin.ignore();
        int coordX; // the position on the road of the motorbike.
        cin >> coordX; cin.ignore();

        // Write an action using cout. DON'T FORGET THE "<< endl"
        // To debug: cerr << "Debug messages..." << endl;

        if(!pass_gap)
        {
            if(coordX+speed >= road+gap)
            {
                cout << "JUMP" << endl;
                pass_gap=true;
            }
            else if(gap+1 < speed)
            {
                cout << "SLOW" << endl;
            }
            else if(gap+1 != speed)
            {
                cout << "SPEED" << endl;
            }
            else if(gap+1 == speed)
            {
                cout << "WAIT" << endl;
            }
        }
        else
        {
            cout << "SLOW" << endl;
        }
    }
}
