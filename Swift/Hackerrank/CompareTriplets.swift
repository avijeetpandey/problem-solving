/**
Hackerrank Compare the triplets problem
*/

func compareTriplets(a: [Int], b: [Int]) -> [Int] {
    var points: [Int] = []
    var ap : Int = 0
    var bp : Int = 0
    for i in 0..<a.count {
        if a[i] > b[i] {
            ap+=1
        }else if a[i] < b[i] { bp+=1 }
    }
    
    points.append(ap)
    points.append(bp)
    
    return points
}
