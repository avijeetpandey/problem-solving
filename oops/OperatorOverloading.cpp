#include <iostream>
using namespace std;

class Complex {
private:
  int real, imaginary;

public:
  Complex(int r = 0, int i = 0) {
    real = r;
    imaginary = i;
  }

  Complex operator+(Complex const &object) {
    Complex res;

    res.real = real + object.real;
    res.imaginary = imaginary + object.imaginary;

    return res;
  }

  void print() {
    cout << "Real: " << real << endl;
    cout << "Imaginary: " << imaginary << endl;
  }
};

int main() {
  Complex c1(10, 5), c2(2, 4);
  Complex c3 = c1 + c2;
  c3.print();
  return 0;
}
