// Stack implementation in swift

public struct Stack<T> {
  fileprivate var array = [T]()
  
  public var isEmpty : Bool {
      return array.isEmpty
  }

  public var count : Int {
    return array.count
  }

  public var top : T? {
    return array.last
  }

  public mutating func pop() -> T? {
    return array.popLast()
  }

  public mutating func push(_ element : T) {
    array.append(element)
  }

}

var stack  = Stack<Int>()
stack.push(23)
stack.push(34)
print("The Size of stack is \(stack.count)")
stack.pop()
print("The top element in stack is \(stack.top ?? 0)")
stack.pop()
print("The element in stack is : \(stack.count)")