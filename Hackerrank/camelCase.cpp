#include<iostream>
using namespace std;

int main(){
    string camelCase;
    cin>>camelCase;

    int len = 1;

    for(int i=0;i<camelCase.length();i++){
        if(isupper(camelCase[i])) len++;
    }

    cout<<len<<endl;

    return 0;
}