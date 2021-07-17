/*
Stack implementation in swift
STACK -> Has LIFO structure , ie Last In first out , this is a generic Stack
*/

public struct Stack<T> {
  fileprivate var array = [T]()

  // properties to get values
  var isEmpty: Bool {
    return array.isEmpty
  }

  var count: Int {
    return array.count
  }

  var top: T? {
    return array.last
  }

  // function to push an element to stack
  public mutating func push(_ element: T) {
    array.append(element)
  }

  // function to pop elements from stack
  public mutating func pop() -> T? {
    return array.popLast()
  }
}

var stack = Stack<String>()
stack.push("Hello")
stack.push("Stack")
stack.push("Swift")
print("The size of the stack is \(stack.count)")
print("The popped element is \(stack.pop() ?? "")")
print("Is the stack empty : \(stack.isEmpty)")