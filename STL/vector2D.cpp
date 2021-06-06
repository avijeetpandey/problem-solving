#include <iostream>
#include <vector>

using namespace std;

int main()
{
    // creating 2D vector
    vector<vector<int>> v = {{1, 2, 4}, {5, 6, 7}};

    // iterating over 2d vector

    for(int i=0;i<v.size();i++){
        for(int x : v[i]) {
            cout<<x<<" ";
        }
        cout<<endl;
    }

    return 0;
}