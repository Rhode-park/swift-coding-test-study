func solution(_ x:Int) -> Bool {
    var xText = String()
    var divisor = Int()
    
    xText = String(x)
    
    for character in xText {
        divisor += Int(String(character)) ?? 0
    }
    
    if x % divisor == 0 {
        return true
    }
    
    return false
}
