import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var result = Int()
    
    for number in left...right {
        var divisors: [Int] = []
        
        for divisor in 1...number {
            if number % divisor == 0 {
                divisors.append(divisor)
            }
        }
        
        if divisors.count % 2 == 0 {
            result += number
        } else if divisors.count % 2 == 1 {
            result -= number
        }
    }
    
    return result
}

