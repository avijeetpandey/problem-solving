#include <iostream>
#include <set>

using namespace std;

int main() {
  set<int> st;
  vector<int> o = {1, 2, 3, 4, 5, 6};
  vector<int> t = {1, 2, 3};

  for (auto it : o)
    st.insert(it);
  for (auto it : t)
    st.insert(it);

  cout << st.size() << endl;

  return 0;
}
