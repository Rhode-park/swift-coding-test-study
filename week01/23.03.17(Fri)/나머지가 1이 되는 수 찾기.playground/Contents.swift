import Foundation

func solution(_ n:Int) -> Int {
    for divisor in 1...n {
        if n % divisor == 1 {
            return divisor
        }
    }
    return n - 1
}
