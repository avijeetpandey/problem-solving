# Node class
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

# Linked list class
class LinkedList:
    def __init__(self):
        self.head = None

    # Function to print the linked list
    def printList(self):
        current = self.head
        while(current):
            print(current.data)
            current = current.next        



if __name__ == '__main__':
    list = LinkedList()
    list.head = Node(1)
    second = Node(2)
    third = Node(3)
    fourth = Node(4)
    list.head.next = second
    second.next = third
    third.next = fourth

    list.printList()
