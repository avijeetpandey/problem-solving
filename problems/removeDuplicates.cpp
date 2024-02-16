#include <iostream>
#include <set>
#include <vector>

using namespace std;

int uniqueElements(vector<int> v)
{
    set<int> s;

    for (auto e : v)
    {
        s.insert(e);
    }

    return s.size();
}

int main()
{
    vector<int> v = {1, 1, 2};

    cout << uniqueElements(v) << endl;

    return 0;
}