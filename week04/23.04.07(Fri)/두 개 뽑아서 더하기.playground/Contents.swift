import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var sortedNumbers = numbers.sorted()
    var addedNumbers = [Int]()
    
    for i in 0...sortedNumbers.count-1 {
        for j in 0...sortedNumbers.count-1 {
            if i >= j {
                continue
            }
            let addedNumber = sortedNumbers[i] + sortedNumbers[j]
            addedNumbers.append(addedNumber)
        }
    }
    
    let duplicatesRemoved = Set(addedNumbers)
    addedNumbers = Array(duplicatesRemoved).sorted()
    
    return addedNumbers
}

solution([2,1,3,4,1])
