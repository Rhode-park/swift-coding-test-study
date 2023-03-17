import Foundation

func solution(_ s:String) -> Bool
{
    enum characterP: Character {
        case smallP = "p"
        case largeP = "P"
    }
    
    enum characterY: Character {
        case smallY = "y"
        case largeY = "Y"
    }
    
    var pCount = 0
    var yCount = 0
    
    for character in s {
        if let characterP = characterP(rawValue: character) {
            pCount += 1
        } else if let characterY = characterY(rawValue: character) {
            yCount += 1
        }
    }
    
    if pCount == yCount {
        return true
    }
    return false
}
