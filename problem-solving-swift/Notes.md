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
