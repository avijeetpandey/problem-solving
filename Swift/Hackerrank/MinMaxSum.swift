/*
 * Complete the 'miniMaxSum' function below.
 *
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func miniMaxSum(arr: [Int]) -> Void {
    let sortedArr = arr.sorted()
    var sum  = 0
    for i in 0..<sortedArr.count {
        sum+=sortedArr[i]
    }
    print(sum-sortedArr[sortedArr.count-1],sum-sortedArr[0])
}
