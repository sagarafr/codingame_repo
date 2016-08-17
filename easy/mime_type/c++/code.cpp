#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <map>

using namespace std;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/
int main()
{
  map<string,string> v_association;
  int N; // Number of elements which make up the association table.
  cin >> N; cin.ignore();
  int Q; // Number Q of file names to be analyzed.
  cin >> Q; cin.ignore();

  for (int i = 0 ; i < N ; i++)
    {
      string EXT; // file extension
      string MT; // MIME type.
      cin >> EXT >> MT; cin.ignore();
      transform(EXT.begin(), EXT.end(), EXT.begin(), ::tolower);
      v_association.emplace(EXT, MT);
    }

  // Write an action using cout. DON'T FORGET THE "<< endl"
  // To debug: cerr << "Debug messages..." << endl;
  // For each of the Q filenames, display on a line the corresponding MIME type. If there is no corresponding type, then display UNKNOWN.

  for (int i = 0 ; i < Q ; i++)
    {
      string FNAME; // One file name per line.
      getline(cin, FNAME);
      unsigned int found_last_point = FNAME.find_last_of(".");

      if(found_last_point >= FNAME.length())
	cout << "UNKNOWN" << endl;
      else
	{
	  FNAME=FNAME.substr(found_last_point + 1);
	  transform(FNAME.begin(), FNAME.end(), FNAME.begin(), ::tolower);
	  if(v_association[FNAME] == "")
	    cout << "UNKNOWN" << endl;
	  else
	    cout << v_association[FNAME] << endl;
	}
    }

  return (0);
}
