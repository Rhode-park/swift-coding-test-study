func solution(_ s:String) -> Bool {
    var count = Int()
    
    s.forEach { character in
        if !character.isNumber {
            count += 1
        }
    }
    
    if s.count == 4 || s.count == 6 {
        if count > 0 {
            return false
        }
        
        return true
    }
    
    return false
}
