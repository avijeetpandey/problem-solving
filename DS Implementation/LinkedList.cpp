#include<iostream>
using namespace std;

class Node {
  public:
    int data;
    Node* next;
};

void printList(Node* head){
  Node* curr = head;
  while(curr!=NULL){
    cout<<curr->data<<" -> "<<;
    curr = curr->next;
  }
}

int main(){
  Node* head = NULL;
  Node* second = NULL;
  Node* third = NULL;

  head = new Node();
  second = new Node();
  third = new Node();

  head->data = 10;
  second->data = 20;
  third->data = 30;

  head->next = second;
  second->next = third;

  printList(head);

  return 0; 
}