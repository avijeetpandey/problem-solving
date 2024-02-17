#include <iostream>
using namespace std;

// A read only class
class EncapsulatedClass
{
private:
    string name;
    int age;
    int height;

public:
    int getAge()
    {
        return this->age;
    }
};