import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    var requests = d.sorted()
    var remainedBudget = budget
    var count = Int()
    
    for request in requests {
        remainedBudget -= request
        if remainedBudget >= 0 {
            count += 1
        }
    }
    
    return count
}
