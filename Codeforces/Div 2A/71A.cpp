#include<bits/stdc++.h>
using namespace std;

int main(){
    int testCases;
    cin>>testCases;

    while(testCases){
        string word;
        cin>>word;

        if ( word.length() > 10){
            cout<<word[0]<<word.length()-2<<word[word.length()-1]<<endl;
        }else {
            cout<<word<<endl;
        }


        testCases--;
    }

    return 0;
}