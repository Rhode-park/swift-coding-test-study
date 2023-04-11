import Foundation

func solution(_ food:[Int]) -> String {
    var leftSide = String()
    var totalSide = String()
    var rightSide = ""
    
    for i in 1...food.count-1 {
        let repeatNumber = food[i] / 2
        if repeatNumber > 0 {
            for _ in 1...repeatNumber {
                leftSide += "\(i)"
            }
        } else {
            leftSide += ""
        }
    }
    
    totalSide = leftSide + "0" + leftSide.reversed()
    
    return totalSide
}

print(solution([1, 7, 1, 2]))
