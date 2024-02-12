#include <vector>
#include <iostream>
using namespace std;

int largestElement(vector<int> &v)
{
    // Write your code here.
    sort(v.begin(), v.end());
    return v[v.size() - 1];
}

int main(int argc, char const *argv[])
{
    vector<int> v = {1, 2, 34, 0, 98};
    largestElement(v);
    return 0;
}
