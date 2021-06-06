#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <map>
#include <iterator>

using namespace std;

int main()
{
    // declaring a map
    map<int, int> m;

    // adding to a map
    for (int i = 0; i < 10; i++)
    {
        m.insert({i, rand()});
    }

    // iterating to the map
    for(auto item : m){
        cout<<item.first<<" : "<<item.second<<endl;
    }

    map<int,int> map_one;

    // adding to map
    for(int i=0;i<10;i++){
        map_one.insert({i,i*2});
    }

    auto itr = map_one.find(10);

    cout<<"The results are : "<<itr->first<<" "<<itr->second<<endl;

    map<int,int> map_two;
    for(int i=0;i<10;i++)
        map_two.insert({i,8});

    if(map_two.count(8)){
        cout<<"8 is present in the map"<<endl;
    }else{
        cout<<"8 is not present in the map"<<endl;
    }


    return 0;
}