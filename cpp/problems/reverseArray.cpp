#include <iostream>
#include <vector>
using namespace std;

void reverseArrayByIndex(vector<int> &v, int m) {
  // Write your code here
  int start = m + 1;
  int end = v.size() - 1;

  while (start <= end) {
    swap(v[start], v[end]);
    start++;
    end--;
  }
}

int main() {
  vector<int> v = {1, 2, 3, 4, 5, 6};

  int start = 4;
  int end = v.size() - 1;

  while (start <= end) {
    swap(v[start], v[end]);
    start++;
    end--;
  }

  for (auto it : v) {
    cout << it << " ";
  }

  return 0;
}
