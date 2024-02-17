#include <iostream>
#include <vector>
using namespace std;

void sortZeroesOnesAndTwos(vector<int> &v)
{
    int z = 0, o = 0, t = 0;

    // counting the zeroes , ones and twos
    for (auto it : v)
    {
        if (it == 0)
            z++;
        if (it == 1)
            o++;
        if (it == 2)
            t++;
    }

    for (int i = 0; i < v.size(); i++)
    {
        if (z > 0)
        {
            v[i] = 0;
            z--;
        }
        else if (o > 0)
        {
            v[i] = 1;
            o--;
        }
        else
        {
            v[i] = 2;
        }
    }
}

int main()
{
    vector<int> v = {0, 1, 2, 2, 1, 0};
    sortZeroesOnesAndTwos(v);

    for (auto it : v)
    {
        cout << it << " ";
    }
    return 0;
}