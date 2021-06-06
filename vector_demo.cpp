#include <iostream>
#include <vector>

using namespace std;

int main()
{
    // creating vector
    vector<int> v = {1, 2, 3, 4};

    // push back inserts an element to back in O(1) time
    v.push_back(4);

    // prining elements of vector
    for(int x : v)
        cout<<x<<" ";
    cout<<endl;

    // size of the vector
    cout<<"The size of the vector is : "<<v.size()<<endl;
    
    // capacity of the vector
    cout<<"The capacity of the vector : "<<v.capacity()<<endl;

    // creating vector with fill constructor
    vector<int> y(10.5);

    for(int x : y)
        cout<<x<<" ";
    cout<<endl;

    return 0;
}