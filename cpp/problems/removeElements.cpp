#include <iostream>
#include <vector>

using namespace std;

int main() {
  vector<int> v = {3, 2, 2, 3};
  int number = 3;

  int count = 0;

  for (auto it : v) {
    if (it == number)
      count++;
  }

  cout << v.size() - count << endl;

  return 0;
}
