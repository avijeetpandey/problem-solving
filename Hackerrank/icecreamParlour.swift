let money: Int = 8
let cost: [Int] = [1,3,4,4,6,8]

// O(n*n)
func icecreamParlourBruteForce(_ money:Int,_ cost: [Int]) -> [Int] {
    var indices: [Int] = []
    
    for i in 0..<cost.count {
        for j in i..<cost.count {
            if cost[i] + cost[j] == money && i != j {
                indices.append(i+1)
                indices.append(j+1)
                return indices
            }
        }
     }

    return indices
}

print(icecreamParlourBruteForce(money,cost))

    var map: [Int:Int] = [Int:Int]()

// Trying to improve the complexity
func icecreamParlourImproved(_ money:Int,_ cost: [Int]) -> [Int] {

    var indices: [Int] = []

    for i in 0..<cost.count {
        let currentValue = cost[i]
        if let index = map[money-currentValue] {
            indices.append(index+1)
            indices.append(i+1)
            return indices
        } else {
            map[currentValue] = i
        }
    }

    return indices
}

print(icecreamParlourImproved(money,cost))
