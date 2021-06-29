#include<iostream>
#define MAX 1000

using namespace std;


class Stack {
  int top;

  public:
  int a[MAX];

  Stack() { top = -1;}
  bool push(int item);
  int pop();
  int peek();
  bool isEmpty();
};

// function to push items into stack
bool Stack::push(int item){
  if ( top >= (MAX - 1)){
     cout<<"Stack overflow"<<endl;
     return false;
  }else {
    a[++top] = item;
    cout<<item<<" pushed into stack"<<endl;
    return true;
  }
}

// function to pop element into stack
int Stack::pop(){
   if ( top < 0 ){
     cout<<"Stack underflow"<<endl;
     return -1;
   }else {
     int poppedItem = a[top--];
     return poppedItem;
   }
}

// function to check item on top
int Stack::peek(){
  return a[top];
}

// function to check is stack isEmpty
bool Stack::isEmpty(){
  return top < 0;
}

int main(){
  Stack s;

  s.push(10);
  s.push(12);
  cout<<s.peek()<<endl;
  cout<<s.pop()<<endl;
  cout<<endl;

  return 0;
}