#include <iostream>
#include <iterator>
#include <vector>
#include <set>

using namespace std;

int main()
{
    set<int> s;
    vector<int> v = {12, 34, 12, 67, 77, 67, 12, 12, 12}; // duplicates containing vector

    for (int x : v)
        s.insert(x);

    // printing the set
    for (auto x : s)
        cout << x << " ";
    cout << endl;

    /**
     * Output of the set
     * 12 34 67 77  ( contains only unique elements ) 
     */

    auto itr = s.find(67);

    if(itr!=s.end()){
        cout<<"The element is present in set"<<endl;
    }else cout<<"The element is not present"<<endl;

    return 0;
}