## Swift Notes :tada: :rocket:

### What does app thining means ?
App thinning is introduced by apple in order to optimise the resource consumption in devices like iOS , tvOS etc , it consists of three main components
- Slicing 
- BitCode
- On demand resources

### Inout and Mutating 
Inout - By default passed function parameters are constant and cant be modified , inout lets you modify the same 

```swift
func increment(number: inout Int) {
    number += 1
}

var myNumber = 5
increment(number: &myNumber)
print(myNumber)  // Output: 6

```

Mutating - Mutuating functions are used with structs and enums to modify instance properties
```swift
struct Counter {
    var count = 0

    mutating func increment() {
        count += 1
    }
}

var counter = Counter()
counter.increment()
print(counter.count)  // Output: 1
```


### Class vs Struct 
Both structs are way to represent custom data types and properties

Structs
- Structs are value type , that means when we pass it to a function a new copy is created and the changes does not affect the original ones 
- By default all the properties are immuatable and defined using let
- Structs do not support inheritance
- No de-initializers
- Do not use ARC for memeory management

Classes
- Classes are reference type , that basically means when assigned / passed into a function , the changes are made to reference and the original instance as well.
- With classes the properties can be modified even if the instance is being created
- Classes support inheritance
- Classes have de-inits which de-allocates the memory
- Use ARC for memeory management

| Feature                        | Structs                   | Classes                |
|--------------------------------|---------------------------|------------------------|
| **Type**                       | Value type                | Reference type         |
| **Memory Management**          | No ARC                    | ARC                    |
| **Inheritance**                | Not supported             | Supported              |
| **Mutability**                 | Immutable in `let` instances | Mutable even in `let` instances |
| **Deinitializers**             | Not allowed               | Allowed                |
| **Identity Comparison**        | Not supported             | Supported with `===`   |
| **Use Case**                   | Lightweight data, simple types | Complex data with shared state or long lifespan |



