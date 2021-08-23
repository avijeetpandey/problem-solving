let arr = [1,2,3,4]

func getArraySum(_ array: [Int]) -> Int {
    var sum: Int  = 0

    for index in 0..<array.count {
        sum += array[index]
    }

    return sum
}

print(getArraySum(arr))