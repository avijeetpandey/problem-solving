# implementation of Binary tree class

class Node:

    def __init__(self, data) -> None:
        self.left = None
        self.right = None
        self.data = data

    # function to print the tree
    def show(self):
        if self.left:
            self.left.show()

        print(self.data)

        if self.right:
            self.right.show()

    # function to add child to the binary tree
    def addChild(self, data):

        # handling case if the node is already present
        if self.data == data:
            return

        # if data is less insert into left subtree else add to right subtree
        if self.data < data:
            if self.left:
                self.left.addChild(data)
            else:
                self.left = Node(data)
        else:
            if self.right:
                self.right.addChild(data)
            else:
                self.right = Node(data)


# Utitlity function to build tree
def buildTree(list):
    print("Building the binary tree")

    root = Node(list[0])

    for i in range(len(list)):
        root.addChild(list[i])

    return root


# Implementation of the binary tree class
list = [17, 4, 1, 20, 9, 23, 18, 34]

root = buildTree(list)

print(root.data)
