#include <iostream>
#include <map>
#include <vector>

using namespace std;

vector<int> twoSumBruteForce(vector<int> v, int target) {
  vector<int> result;

  for (int i = 0; i < v.size(); i++) {
    for (int j = i + 1; j < v.size(); j++) {
      if (v[i] + v[j] == target) {
        result.push_back(i);
        result.push_back(j);
        break;
      }
    }
  }

  return result;
}

vector<int> twoSumOptimised(vector<int> v, int target) {
  map<int, int> mp;
  vector<int> result;

  for (int i = 0; i < v.size(); i++) {
    int difference = target - v[i];

    if (mp.count(difference)) {
      return {mp[difference], i};
    }

    mp[v[i]] = i;
  }

  return {};
}

int main() {
  vector<int> v = {-3, 4, 3, 90};
  int target = 0;

  vector<int> result = twoSumOptimised(v, target);

  for (auto it : result) {
    cout << it << " ";
  }

  return 0;
}
