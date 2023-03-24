func solution(_ n:Int) -> String {
    if n % 2 == 0 {
        var text = String(repeating: "수박", count: n / 2)
        
        return text
    } else {
        var text = String(repeating: "수박", count: (n+1) / 2)
        text.removeLast()
        
        return text
    }
}
