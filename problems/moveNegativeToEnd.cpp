#include <iostream>
#include <vector>
using namespace std;

int main()
{
    vector<int> v = {1, -4, -2, 5, 3};
    vector<int> pList;
    vector<int> nList;

    for (auto it : v)
    {
        if (it > 0)
        {
            pList.push_back(it);
        }
        else
        {
            nList.push_back(it);
        }
    }

    int pos = 0;

    for (int i = 0; i < pList.size(); i++)
    {
        v[i] = pList[i];
        pos++;
    }

    for (int j = 0; j < nList.size(); j++)
    {
        v[pos] = nList[j];
        pos++;
    }

    for (auto it : v)
    {
        cout << it << " ";
    }

    return 0;
}