func solution(_ s:String) -> String {
    var result = String()
    
    if s.count % 2 == 0 {
        let number = s.count / 2
        let middleIndexLeft = s.index(s.startIndex, offsetBy: number-1)
        let middleIndexRight = s.index(s.startIndex, offsetBy: number)
        let middleStringLeft = s[middleIndexLeft]
        let middleStringRight = s[middleIndexRight]
        
        result = String(middleStringLeft) + String(middleStringRight)
    } else if s.count % 2 == 1 {
        let number = (s.count + 1) / 2
        let middleIndex = s.index(s.startIndex, offsetBy: number-1)
        let middleString = s[middleIndex]
        
        result = String(middleString)
    }
    
    return result
}
