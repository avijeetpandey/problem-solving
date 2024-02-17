#include <iostream>
using namespace std;

class Hero
{
public:
    int health;
    char name[100];

    Hero()
    {
        cout << "Constructor called" << endl;
    }
};