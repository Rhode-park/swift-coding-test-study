func solution(_ s:String) -> String {
    var words = [Character]()
    var result = String()
    var count = Int()
    
    for word in s {
        words.append(word)
    }
    
    for character in words {
        if character.isLetter {
            if count % 2 == 0 {
                result += character.uppercased()
            } else {
                result += character.lowercased()
            }
            count += 1
        } else {
            result += String(character)
            count = 0
        }
    }
    
    return result
}
