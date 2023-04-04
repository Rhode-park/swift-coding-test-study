func solution(_ s:String, _ n:Int) -> String {
    var words = [Character]()
    var result = String()
    
    for word in s {
        words.append(word)
    }
    
    let alphabets: [String: Int] = ["a": 0, "b": 1, "c": 2, "d": 3, "e": 4, "f": 5, "g": 6, "h":7, "i":8, "j":9, "k":10, "l":11, "m":12, "n":13, "o":14, "p":15, "q":16, "r":17, "s":18, "t":19, "u":20, "v":21, "w":22, "x":23, "y":24, "z":25]
    
    for character in words {
        if character.isLetter {
            if character.isUppercase {
                var word = character.lowercased()
                var index = alphabets[word] ?? -1
                index += n
                
                if index > 25 {
                    index -= 26
                }
                
                for (key, value) in alphabets {
                    if value == index {
                        result += key.uppercased()
                    }
                }
                
                
            } else {
                var index = alphabets[String(character)] ?? -1
                index += n
                
                if index > 25 {
                    index -= 26
                }
                
                for (key, value) in alphabets {
                    if value == index {
                        result += key
                    }
                }
            }
        } else {
            result += String(character)
        }
    }
    
    return result
}

# 풀이 너무 더러움
