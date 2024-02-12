#include <iostream>
#include <map>
#include <vector>

using namespace std;

int findDuplicateNumber(vector<int> &nums)
{
    map<int, int> m;
    for (auto it : nums)
    {
        if (m.find(it) == m.end())
        {
            m[it] = 1;
        }
        else
        {
            m[it]++;
        }
    }

    for (auto it : m)
    {
        if (it.second > 1)
        {
            return it.first;
        }
    }

    return 0;
}

int main()
{
    vector<int> v = {1, 3, 4, 2, 2};
    int number = findDuplicateNumber(v);

    // second method
    sort(v.begin(), v.end());

    for (int i = 0; i < v.size(); i++)
    {
        if (v[i] == v[i + 1])
        {
            cout << v[i] << endl;
        }
    }

    return 0;
}