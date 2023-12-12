# Implementation of stack data type
# Stack supports LIFO - last in first out structure

class Stack:

    def __init__(self):
        self.stack = []

    # function to push element into the stack
    def push(self, data):
        self.stack.append(data)

    # function to pop element from the stack
    def pop(self):
        data = self.stack[-1]
        del self.stack[-1]
        return data

    # function to peek the element of the stack
    def peek(self):
        return self.stack[-1]

    # function to check if the stack is empty
    def isEmpty(self):
        return self.stack == []

    # function to get the size of the stack
    def size(self):
        return len(self.stack)

    # function to print all the elements of a stack
    def printStack(self):
        print("=======")

        for item in self.stack:
            print(item)

        print("=======")


# Creating and testing values of the stack
stack = Stack()

stack.push(10)
stack.push(12)

stack.printStack()

print(stack.peek())
print(stack.pop())
print(stack.peek())

stack.printStack()
