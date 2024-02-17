#include <iostream>
#include "Hero.cpp"

using namespace std;

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

    cout << t.getName() << endl;

    return 0;
}