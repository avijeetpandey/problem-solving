let arr: [[Int]] = [ [1,2,3],
                     [4,5,6], 
                     [9,8,9] ]

var primarySum: Int  = 0
var secondarySum: Int = 0
var secondaryIndex: Int = arr.count - 1

for row in 0..<arr.count {
     for column in 0..<arr.count {
         if row == column {
             primarySum += arr[row][column]
         }

         if column == secondaryIndex {
             secondarySum += arr[row][secondaryIndex]
             secondaryIndex-=1
         }
     }
}

print(abs(primarySum - secondarySum))