import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var result = Int()
    
    for i in 0...signs.count-1 {
        if signs[i] {
            result += absolutes[i]
        } else if !signs[i] {
            result -= absolutes[i]
        }
    }
    
    return result
}
