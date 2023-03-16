import Foundation

enum Divisors: Int, CaseIterable {
    case hundredMillion = 100000000
    case tenMillion = 10000000
    case Million = 1000000
    case hundreadThousand = 100000
    case tenThousand = 10000
    case thousand =  1000
    case hundread = 100
    case ten = 10
    case one = 1
}

func solution(_ n:Int) -> Int {
    var number: Int = n
    var answer:Int = 0
    
    for divisor in Divisors.allCases {
        while number >= divisor.rawValue {
            answer += number / divisor.rawValue
            number = number % divisor.rawValue
        }
    }
    
    return answer
}
