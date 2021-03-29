#include<bits/stdc++.h>
#define fast ios_base::sync_with_stdio(false);cin.tie(NULL);
using namespace std;

void redirectIO(){
	fast
	#ifndef ONLINE_JUDGE
		freopen("in.txt","r",stdin);
		freopen("out.txt","w",stdout);
	#endif
}

int main(){
	redirectIO();
	int n; cin>>n;
	string s; cin>>s;
	int a=0,d=0;
	for(char c : s)
		if(c=='A')
			a++;
		else d++;

	if(a>d)
		cout<<"Anton"<<endl;
	else if(a==d)
		cout<<"Friendship"<<endl;
	else cout<<"Danik"<<endl;	

	return 0;
}