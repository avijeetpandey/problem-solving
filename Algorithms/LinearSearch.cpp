/**
 * Linear search is a searching algorithm to find the index of an element in an array 
 */

#include<bits/stdc++.h>
using namespace std;

int linearSearch(vector<int> v,int key){
    
    for(int i=0;i<v.size();i++){
        if ( v[i] == key ) return i;
    }

    return -1;   
}

int main(){
    vector<int> v{1,2,3,87,90,-1};
    int element;
    cin>>element;

    int index = linearSearch(v,element);
    if(index > 0){
        cout<<"Element found at : "<<index<<endl;
    } else cout<<"Element is not present"<<endl;
    return 0;
}