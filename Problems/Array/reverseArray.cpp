#include <bits/stdc++.h>
using namespace std;

void printVector(vector<int> v){
    for(int x : v)
    cout<<x<<" ";
    cout<<endl;
}

void reverseArray(vector<int> &v){
    int start = 0 , end = v.size()-1;
    while(start < end ){
        swap(v[start],v[end]);
        start++;
        end--;
    }
}

int main(){

    // using cpp vector
    vector<int> v = {1, 2, 3, 5, 6};
    reverse(v.begin(), v.end()); 

    // using custom function
    vector<int> x = {12,85,96,11,0};
    reverseArray(x);
    printVector(x);

    return 0;
}