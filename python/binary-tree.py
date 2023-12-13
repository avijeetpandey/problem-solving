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
        if data == self.data:
            return

        # if data is less insert into left subtree else add to right subtree
        if data < self.data:
            if self.left:
                self.left.addChild(data)
            else:
                self.left = Node(data)
        else:
            if self.right:
                self.right.addChild(data)
            else:
                self.right = Node(data)

    # function implementation of in order traversal
    def inOrderTraversal(self):
        elements = []

        if self.left:
            elements += self.left.inOrderTraversal()

        elements.append(self.data)

        if self.right:
            elements += self.right.inOrderTraversal()

        return elements

    # function to add post order traversal
    def postOrderTraversal(self):
        elements = []

        # visit the left subtree
        if self.left:
            elements += self.left.postOrderTraversal()

        # visit the right subtree
        if self.right:
            elements += self.right.postOrderTraversal()

        # visit the root
        elements.append(self.data)

        return elements

    # function to add pre order traversal
    def preOrderTraversal(self):
        elements = []

        # visit the current node
        elements.append(self.data)

        # visit the left subtree
        if self.left:
            elements += self.left.preOrderTraversal()

        # visit the right subtree
        if self.right:
            elements += self.right.preOrderTraversal()

        return elements

    # function to search element in a tree
    def search(self, value):
        if self.data == value:
            return True

        # search in the left subtree
        if value < self.data:
            if self.left:
                return self.left.search(value)
            else:
                return False

        # search the right subtree
        if value > self.data:
            if self.right:
                return self.right.search(value)
            else:
                return False


# Utitlity function to build tree
def buildTree(list):
    print("Building the binary tree")

    root = Node(list[0])

    for i in range(len(list)):
        root.addChild(list[i])

    return root


# Implementation of the binary tree class
if __name__ == '__main__':
    list = [17, 4, 1, 20, 9, 23, 18, 34]
    root = buildTree(list)
    print(root.search(12))
