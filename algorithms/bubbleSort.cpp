#include <iostream>
#include <vector>

using namespace std;

void bubbleSort(vector<int> &v)
{
    for (int i = 0; i <= v.size() - 1; i++)
    {
        for (int j = 0; j <= v.size() - 1; j++)
        {
            if (v[j] > v[i])
            {
                swap(v[j], v[i]);
            }
        }
    }
}

int main()
{
    vector<int> v = {81, 4, 8, 6, 8, -1};
    bubbleSort(v);

    // iterating vector
    for (auto it : v)
    {
        cout << it << " ";
    }

    return 0;
}

/*
Complexity - O(N^2)
Space - O(1)
*/