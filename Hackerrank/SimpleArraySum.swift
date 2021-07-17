/**
Function to find sum of all elements in array
**/

func simpleArraySum( _ ar : [Int]) -> Int {
    var res: Int = 0

    for i in 0..<ar.count {
        res += ar[i]
    }

    return res
}


// sample run 

print(simpleArraySum([1,2,3,4,5,6]))