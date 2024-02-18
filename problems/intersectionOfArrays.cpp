#include <iostream>
#include <set>
#include <vector>

using namespace std;

int main()
{
    vector<int> v = {1, 2, 3, 4, 5, 6};
    vector<int> w = {1, 2, 3, 4};

    set<int> st;

    if (w.size() < v.size())
    {
        for (auto it : w)
            st.insert(it);
    }
    else
    {
        for (auto it : v)
            st.insert(it);
    }

        return 0;
}