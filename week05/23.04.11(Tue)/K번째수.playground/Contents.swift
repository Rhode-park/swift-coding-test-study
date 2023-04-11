import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var selectedNumbers = [Int]()
    
    for command in commands {
        var selectedArray = array[command[0]-1...command[1]-1]
        print(selectedArray)
        
        selectedArray.sort()
        print(selectedArray)
        print(command[2]-1)
        let selectedNumber = selectedArray[command[2]]
        print(selectedNumber)
        selectedNumbers.append(selectedNumber)
    }
    
    
    return selectedNumbers
}

print(solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3]]))
