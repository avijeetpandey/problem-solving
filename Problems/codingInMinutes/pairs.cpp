#include<iostream>
#include<unordered_set>
#include<vector>
#include<utility>

using namespace std;

pair<int,int> pairSum(vector<int> v,int targetSum){
    unordered_set<int> s;
    pair<int,int> p;

    for(int i=0;i<v.size();i++){
        int x = targetSum - v[i];
        if(s.find(x)!=s.end()){
            p.first = x;
            p.second = v[i];
            return p;
        } 
        s.insert(v[i]);
    }


    return p;
}

int main(){

    vector<int> v={10,5,2,3,-6,9,11};
    int target = 4;

    auto p = pairSum(v,target);

    cout<<p.first<<" "<<p.second<<endl;
    return 0;
}