#include <iostream>
#include <vector>
using namespace std;

int main() {

  vector<int> v = {2, 0, 2, 1, 1, 0};

  for (int i = 0; i < v.size() - 1; i++) {
    for (int j = 0; j < v.size() - 1; j++) {
      if (v[j] > v[i]) {
        swap(v[j], v[i]);
      }
    }
  }

  for (auto it : v) {
    cout << it << " ";
  }

  return 0;
}
