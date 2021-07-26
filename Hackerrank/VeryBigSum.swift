/*
 * Complete the 'aVeryBigSum' function below.
 *
 * The function is expected to return a LONG_INTEGER.
 * The function accepts LONG_INTEGER_ARRAY ar as parameter.
 */

func aVeryBigSum(ar: [Int]) -> Int {
    // Write your code here
    var sum = 0
    for i in 0..<ar.count {
        sum+=ar[i]
    }
    return sum
}