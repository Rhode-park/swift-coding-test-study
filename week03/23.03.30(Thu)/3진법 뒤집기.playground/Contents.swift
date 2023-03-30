import Foundation

func solution(_ n:Int) -> Int {
    var number = n
    var trinaryDigit = [Int]()
    var result = Int()
    
    while number > 0 {
        trinaryDigit.append(number % 3)
        number = number / 3
    }
    
    trinaryDigit.reverse()
    
    for i in 0...trinaryDigit.count-1 {
        result += (pow(3, i) as NSDecimalNumber).intValue * trinaryDigit[i]
    }
    
    return result
}
