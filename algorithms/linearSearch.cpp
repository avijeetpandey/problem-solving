#include <iostream>
#include <vector>
using namespace std;

int linearSearch(vector<int> v, int element)
{
    for (int i = 0; i < v.size(); i++)
    {
        if (v[i] == element)
        {
            return i;
        }
    }

    return -1;
}

int main()
{
    vector<int> v = {1, 2, 3, 4, 5, 6};
    int index = linearSearch(v, 51);

    if (index == -1)
    {
        cout << "Element not found" << endl;
    }
    else
    {
        cout << "Element found at index " << index << endl;
    }
    return 0;
}