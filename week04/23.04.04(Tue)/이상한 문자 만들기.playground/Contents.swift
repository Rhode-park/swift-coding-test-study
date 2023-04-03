func solution(_ s:String) -> String {
    let words = s.split(separator: " ").map { String($0) }
    var result = String()
    
    for word in words {
        var count = Int()
        
        for character in word {
            if count % 2 == 0 {
                result += character.uppercased()
            } else {
                result += character.lowercased()
            }
            count += 1
        }
        
        result += " "
    }
    
    result.removeLast()
    
    return result
}


print(solution("why so "))
