#include <iostream>
#include <map>
#include <vector>
using namespace std;

int findDuplicates(vector<int> &v)
{
    map<int, int> mp;

    for (auto it : v)
    {
        if (mp.find(it) == mp.end())
        {
            mp[it] = 1;
        }
        else
        {
            mp[it]++;
        }
    }

    for (auto it : mp)
    {
        if (it.second > 1)
        {
            return it.first;
        }
    }
}

int main()
{
    vector<int> v = {1, 3, 4, 2, 2};
    int res = findDuplicates(v);
    cout << res << endl;
    return 0;
}
