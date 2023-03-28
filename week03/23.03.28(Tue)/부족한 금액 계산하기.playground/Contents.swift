import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var result = Int64()
    var totalExpense = Int()
    
    for i in 1...count {
        totalExpense += price * i
    }
    
    if totalExpense <= money {
        return 0
    }
    
    result = Int64(totalExpense) - Int64(money)
    
    return result
}

