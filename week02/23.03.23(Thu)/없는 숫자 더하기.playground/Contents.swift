import Foundation

func solution(_ numbers:[Int]) -> Int {
    var result = Int()
    
    for i in 0...9 {
        result += i
    }
    
    for number in numbers {
        result -= number
    }
    
    return result
}
