import Foundation

func solution(_ s:String) -> [Int] {
    var characters = s.map { $0 }
    var reversedCharacters = [Character]()
    var result = [Int]()
    
    for character in characters {
        
        if reversedCharacters.contains(character) {
            for i in 0..<reversedCharacters.count {
                if character == reversedCharacters[i] {
                    result.append(i+1)
                    
                    break
                }
            }
        } else {
            result.append(-1)
        }
        
        reversedCharacters.insert(character, at: 0)
        
    }
    
    return result
}
