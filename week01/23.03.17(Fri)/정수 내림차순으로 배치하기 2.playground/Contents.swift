func solution(_ n:Int64) -> Int64 {
    var stringN = String(n)
    var characterArray: [Character] = []
    var result = ""
    
    for character in stringN {
        characterArray.append(character)
    }
    
    let sortedArray = characterArray.sorted(by: >)
    
    for sortedCharacter in sortedArray {
        result += String(sortedCharacter)
    }
    
    guard let int64Result = Int64(result) else {
        return 0
    }
    
    return int64Result
}

