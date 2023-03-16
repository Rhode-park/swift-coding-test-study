func solution(_ n:Int) -> Int {
    var result: Int = 0

    guard n == 0 else {
        for number in 1...n {
            if n % number == 0 {
                result += number
            }
        }
        return result
    }
    return 0
}
