#include <iostream>
#include "Hero.cpp"

using namespace std;

// init static variables
int Hero::timeToComplete = 10;

int main()
{
    Hero hero;

    // dynamic creation of class
    Hero *h = new Hero;

    // parameterised call
    Hero pHero(12);
    char name[7] = "Aman";
    pHero.setName(name);

    // printing the address of the pHero
    cout << "Address of pHero is: " << &pHero << endl;

    Hero t(pHero);

    Hero *b = new Hero;

    cout << t.getName() << endl;

    const int x = 10;

    cout << "X " << x << endl;

    // using
    cout << Hero::timeToComplete << endl;

    // calling static functions
    Hero::staticFunction();

    // calling destructor
    delete b;
    delete h;

    return 0;
}