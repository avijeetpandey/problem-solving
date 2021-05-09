#include<bits/stdc++.h>
using namespace std;

// find the maximum and minimum element of an array

int main(){
    vector<int> v = {-1,5,2,6,1,6,23};
    sort(v.begin(),v.end());

    cout<<"Max : "<<v[v.size()-1]<<endl;
    cout<<"Min : "<<v[0]<<endl;

    return 0;
}