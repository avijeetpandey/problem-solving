#include<iostream>
#include<iomanip>
using namespace std;

int main(){
    int test;
    cin>>test;
    float positive = 0 , negative = 0, zero = 0;
    float total = test;
    while (test--) {
        int number ; 
        cin>>number;
        if(number > 0 ) positive++;
        else if ( number < 0) negative++;
        else zero++;
    }
    // setting precision for total 7 digits
    cout<<setprecision(7)<<(positive/total)<<endl;
    cout<<setprecision(7)<<(negative/total)<<endl;
    cout<<setprecision(7)<<(zero/total)<<endl;

    return 0;
}