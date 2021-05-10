#include<bits/stdc++.h>
using namespace std;

bool canBreakWatermelon(int number){
    if(number%2==0 && number!=2)
        return true;
    return false;
}

int main(){
    int number ;
    cin>>number;
    if(canBreakWatermelon(number)){
        cout<<"YES"<<endl;
    }else {
        cout<<"NO"<<endl;
    }

    return 0;
}