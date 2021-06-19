/*
Input: nums = [1,2,3,4]
Output: [1,3,6,10]
Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
*/

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var resArray : [Int] =  []
        var runningSum : Int = 0
        
        for element in nums {
            runningSum += element
            resArray.append(runningSum)
        }
        
        return resArray
    }
}