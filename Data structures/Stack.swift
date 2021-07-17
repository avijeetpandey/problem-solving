// Stack implementation in swift

public struct Stack<T> {
  fileprivate var array : [T]()
  
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