func solution(_ n:Int, _ m:Int) -> [Int] {
    var small = Int()
    var large = Int()
    
    if n > m {
        small = m
        large = n
    } else if n < m {
        small = n
        large = m
    } else {
        return [n, n]
    }
    
    var GCD = 1
    var LCM = small * large
    
    var divisors = [Int]()
    var multiplier = [Int]()
    
    for i in GCD...small {
        if small % i == 0 {
            divisors.append(i)
        }
    }
    
    let commonDivisors = divisors.filter { large % $0 == 0 }
    GCD = commonDivisors.max() ?? GCD
    
    for j in large...LCM {
        if j % large == 0 {
            multiplier.append(j)
        }
    }
    
    let commonMultiplier = multiplier.filter { $0 % small == 0 }
    LCM = commonMultiplier.min() ?? LCM
    
    return [GCD, LCM]
}
