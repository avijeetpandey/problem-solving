#include <iostream>
#include <vector>
using namespace std;

int main()
{
    vector<int> v = {6, 5, 4, 3, 2, 1, 0};

    int start = 0;
    int end = v.size() - 1;

    while (start <= end)
    {
        swap(v[start], v[end]);
        start++;
        end--;
    }

    for (auto it : v)
    {
        cout << it << " ";
    }

    return 0;
}