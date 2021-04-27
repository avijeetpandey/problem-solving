# Node class
class Node:
    def __init__(self,data):
        self.data = data
        self.next = None

# Linked list class

class LinkedList:
    def __init__(self):
        self.head = None
    
    #printing linked list
    def printList(self):
        temp = self.head
        while(temp):
            print(temp.data)
            temp = temp.next

if __name__ == '__main__':
    list = LinkedList()
    list.head = Node(1)
    second = Node(2)
    third = Node(3)
    list.head.next=second
    second.next = third

    list.printList()
