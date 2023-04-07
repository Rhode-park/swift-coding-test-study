import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var numbers = [String]()
    for i in 0...t.count-p.count {
        let IndexOne = t.index(t.startIndex, offsetBy: 0 + i)
        let IndexTwo = t.index(t.startIndex, offsetBy: p.count + i - 1)
        let number = String(t[IndexOne...IndexTwo])
        
        if let numberInt = Int(number),
           let pInt = Int(p),
           numberInt <= pInt {
            numbers.append(number)
        }
    }
    
    return numbers.count
}
