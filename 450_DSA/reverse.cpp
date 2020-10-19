#include<iostream>
using namespace std;

int main(){
    int t;
    cin>>t;
    while(t--){
        string s; cin>>s;
        string n="";
        for(int i=s.length()-1;i>=0;i--)
            n+=s[i];
        cout<<n<<endl;
    }
}
