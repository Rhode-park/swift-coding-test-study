func solution(_ strings:[String], _ n:Int) -> [String] {
    var stringDictionary = [String: Character]()
    var sortedArray = [String]()
    
    for string in strings {
        let index = string.index(string.startIndex, offsetBy: n)
        let character = string[index]
        stringDictionary[string] = character
    }
    
    let sortedDictionary = stringDictionary.sorted { (first, second) in
        if first.value == second.value {
            return first.key < second.key
        }
        return first.value < second.value
    }
    
    for element in sortedDictionary {
        sortedArray.append(element.key)
    }
    
    return sortedArray
}
