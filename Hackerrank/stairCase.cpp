#include<iostream>
using namespace std;

void createStairCases(int n){
    for(int i=1;i<=n;i++){
        for(int j=1;j<=i;j++){
            cout<<"#";
        }
        cout<<endl;
    }
}

int main(){
    int n;
    cin>>n;
    createStairCases(n);
    return 0;
}