#include <iostream>
using namespace std;

// Parent/Base/Super class
class Human
{
public:
    int height;
    int weight;
    int age;

public:
    int getAge()
    {
        return this->age;
    }

    int getWeight()
    {
        return this->weight;
    }

    int getHeight()
    {
        return this->height;
    }

    void setWeight(int weight)
    {
        this->weight = weight;
    }

    void setHeight(int height)
    {
        this->height = height;
    }

    void setAge(int age)
    {
        this->age = age;
    }
};

// Child classes
class Male : public Human
{
public:
    string color;

    void sleep()
    {
        cout << "Male sleeping" << endl;
    }
};

class Female : public Human
{
public:
    string color;

    void sleep()
    {
        cout << "Female sleeping" << endl;
    }
};

int main()
{
    Male male;
    cout << male.age << endl;
    cout << male.color << endl;
    male.sleep();

    Female female;
    cout << female.age << endl;
    cout << female.color << endl;
    female.sleep();

    return 0;
}