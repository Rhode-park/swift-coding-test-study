enum Divisors: Int, CaseIterable {
    case tenBillion = 10000000000
    case billion = 1000000000
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

func solution(_ n:Int64) -> [Int] {
    var number = Int(n)
    var numbers: [Int] = []
    
    for divisor in Divisors.allCases {
            numbers.append(number / divisor.rawValue)
            number = number % divisor.rawValue
    }
    numbers = numbers.reversed()
    
    while numbers.last == 0 {
        numbers.removeLast()
    }
    
    return numbers
}

solution(1023)
