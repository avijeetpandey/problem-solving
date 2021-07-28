#include<bits/stdc++.h>
using namespace std;

int findMaxElement(vector<int> v){
    int max = INT_MIN;

    for(int i=0;i<v.size();i++){
        if ( v[i] > max) max = v[i];
    }

    return max;
}

int main(){
    int n;
    cin>>n;
    vector<int> v(n);

    for(int i=0;i<n;i++) cin>>v[i];

    int maxElement = findMaxElement(v);
    cout<<"Max Element : "<<maxElement<<endl;
    
    return 0;
}