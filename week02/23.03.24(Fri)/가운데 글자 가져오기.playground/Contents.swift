func solution(_ s:String) -> String {
    var result = String()
    
    if s.count % 2 == 0 {
        let number = s.count / 2
        result += String(s[s.index(s.startIndex, offsetBy: number)])
        result += String(s[s.index(s.startIndex, offsetBy: number+1)])
    } else if s.count % 2 == 1 {
        let number = (s.count + 1) / 2
        result += String(s[s.index(s.startIndex, offsetBy: number)])
    }
    
    return result
}
