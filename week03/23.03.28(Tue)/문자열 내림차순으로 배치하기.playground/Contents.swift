func solution(_ s:String) -> String {
    var upperCasedArray: [String] = []
    var lowerCasedArray:[String] = []
    var result = String()
    
    s.forEach { character in
        if ("A"..."Z").contains(character) {
            upperCasedArray.append(String(character))
        }
    }
    
    s.forEach { character in
        if ("a"..."z").contains(character) {
            lowerCasedArray.append(String(character))
        }
    }
    
    upperCasedArray = upperCasedArray.sorted(by: >)
    lowerCasedArray = lowerCasedArray.sorted(by: >)
    
    lowerCasedArray.forEach { character in
        result += character
    }
    
    upperCasedArray.forEach { character in
        result += character
    }
    
    return result
}

