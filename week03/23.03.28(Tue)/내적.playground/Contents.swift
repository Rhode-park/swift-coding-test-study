import Foundation

func solution(_ a:[Int], _ b:[Int]) -> Int {
    var result = Int()
    
    for i in 0...a.count-1 {
        result += a[i]*b[i]
    }
    
    return result
}
