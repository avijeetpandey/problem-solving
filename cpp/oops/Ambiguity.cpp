#include <iostream>
using namespace std;

class Animal {
public:
  void speaks() { cout << "Animal speaks" << endl; }
};

class Human {
public:
  void speaks() { cout << "Human speaks" << endl; }
};

class Hybrid : public Animal, public Human {};

int main() {
  Hybrid h;

  // using the function of animal class to remove ambiguity
  h.Animal::speaks();

  h.Human::speaks();

  return 0;
}
