import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    let yearningDictionary = makeDictionary(name: ["may", "kein", "kain", "radi"], yearning: [5, 10, 1, 3])
    var results = [Int]()
    
    for (key,value) in yearningDictionary {
        let person = [key]
        
        for i in 0...photo.count-1 {
            var result = 0
            
            if photo.contains(person) {
                result += value
            }
            
            results[i] = result
        }
    }
    
    return results
}

func makeDictionary(name:[String], yearning:[Int]) -> [String: Int] {
    var yearningDictionary = [String: Int]()
    
    for i in 0...name.count-1 {
        let person = name[i]
        yearningDictionary[person] = yearning[i]
    }
    
    return yearningDictionary
}
