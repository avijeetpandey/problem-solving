#include <iostream>
using namespace std;

class A
{
public:
    void sayHello()
    {
        cout << "Hello" << endl;
    }

    int sayHello(int n)
    {
        cout << n << " " << endl;
        return n;
    }

    void sayHello(string name)
    {
        cout << "Name is: " << name << endl;
    }
};

int main()
{
    A ob;
    ob.sayHello();

    // calling overloaded functions
    int r = ob.sayHello(2);
    cout << r << " " << endl;

    ob.sayHello("Avijeet");

    return 0;
}