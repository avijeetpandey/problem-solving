#include <iostream>
#include <utility>
#include <map>

using namespace std;

int main()
{
    // defining a pair
    pair<int, int> p = {1, 3};

    // accessing elements
    cout << p.first << " " << p.second << endl;

    // nested pair
    pair<int, pair<int, int>> nestedPair = {1, {3, 4}};

    cout << nestedPair.second.first << " " << endl;

    return 0;
}