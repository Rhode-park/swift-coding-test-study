func solution(_ s:String) -> String {
    let words = s.split(separator: " ").map { String($0) }
    var result = String()
    
    for word in words {
        let startIndex = word.startIndex
        
        for i in 0...word.count-1 {
            if i % 2 == 0 {
                result += word[word.index(startIndex, offsetBy: i)].uppercased()
            } else {
                result += word[word.index(startIndex, offsetBy: i)].lowercased()
            }
        }
        
        result += " "
    }
    
    result.removeLast()
    
    return result
}


print(solution("hello my name is rhode"))
