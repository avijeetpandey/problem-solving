#include<bits/stdc++.h>
using namespace std;

int main(){
    int n,k;
    cin>>n>>k;

    vector<int> v(n);

    for(int i=0;i<n;i++) {
        int number;
        cin>>number;
        v[i] = number;
    }

    int count = 0;
    for(int i=0;i<n;i++){
        for(int j=i+1;j<n;j++){
            int sum = v[i]+v[j];
            if(sum%k==0) count++;
        }
    }

    cout<<count<<endl;

    return 0;
}