func solution(_ s:String) -> Int {
    var number = String()
    var result = 0
    
    if s.first == "-" {
        number = s
        number.removeFirst()
        result = Int(number) ?? 0
        result = 0 - result
    } else if s.first == "+" {
        number = s
        number.removeFirst()
        result = Int(number) ?? 0
        result = 0 + result
    } else {
        number = s
        result = Int(number) ?? 0
        result = 0 + result
    }
    
    return result
}
