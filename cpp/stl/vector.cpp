#include <vector>
#include <iostream>

using namespace std;

int main()
{
    // declaring vector , this line creates an empty container
    vector<int> v;

    v.push_back(1);
    v.push_back(2);
    v.push_back(3);
    v.push_back(4);

    // defining vector of a size prefilled with elements
    vector<int> prefilledVector(5, 100); // size of 5 filled with 100

    // defining vector of a size
    vector<int> prefilledWithZeroOrGrabageValue(5);

    // copying a vector
    vector<int> copyVector(v);

    // iterating over a vector
    for (vector<int>::iterator it = v.begin(); it != v.end(); it++)
    {
        cout << *it << " ";
    }

    // another way of iterating vectors
    cout << endl
         << "==========Second Method========" << endl;
    for (auto it = v.begin(); it != v.end(); it++)
    {
        cout << *it << " ";
    }

    // erasing elements in a vector
    v.erase(v.begin(), v.end()); //[start, end)

    // another way of iterating vectors
    cout << endl
         << "==========Third Method========" << endl;
    for (auto it : v)
    {
        cout << it << " ";
    }

    return 0;
}