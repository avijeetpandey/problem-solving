#include <iostream>
#include <vector>
using namespace std;

int main()
{
    vector<int> v = {0, 1, 0, 3, 12};

    int pointer = 0; // start from the array

    for (int i = 0; i < v.size(); i++)
    {
        if (v[i] != 0)
        {
            swap(v[i], v[pointer]);
            pointer++;
        }
    }

    for (auto it : v)
    {
        cout << it << " ";
    }

    return 0;
}