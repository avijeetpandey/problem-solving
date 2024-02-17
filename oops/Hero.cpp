#include <iostream>
using namespace std;

class Hero
{
public:
    int health;
    char *name;
    static int timeToComplete;

    Hero()
    {
        cout << "Constructor called" << endl;
        name = new char[100];
    }

    // parameterised constructor
    Hero(int health)
    {
        // printing the address of the current object
        cout << "this-> " << this << endl;
        this->health = health;
        cout << "Parameterised constructor called" << endl;
    }

    // custom implementation of the copy constructor
    Hero(Hero &h)
    {
        this->health = h.health;
        this->name = h.name;
    }

    // getters and setters
    char *getName()
    {
        return this->name;
    }

    int getHealth()
    {
        return this->health;
    }

    void setHealth(int health)
    {
        this->health = health;
    }

    void setName(char name[])
    {
        strcpy(this->name, name);
    }

    static void staticFunction()
    {
        cout << "The calling of the static function" << endl;
    }

    // creating destructor
    ~Hero()
    {
        cout << "Destructor called" << endl;
    }
};