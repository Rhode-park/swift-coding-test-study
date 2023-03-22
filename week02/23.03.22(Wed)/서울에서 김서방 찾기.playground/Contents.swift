func solution(_ seoul:[String]) -> String {
    for x in 0...seoul.count-1 {
        if seoul[x] == "Kim" {
            return "김서방은 \(x)에 있다"
        }
    }
    return "김서방은 x에 있다"
}
