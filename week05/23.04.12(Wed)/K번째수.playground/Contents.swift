import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var selectedNumbers = [Int]()
    
    for command in commands {
        var selectedArray = Array(array[command[0]-1...command[1]-1])
        
        selectedArray.sort()

        let selectedNumber = selectedArray[command[2]-1]
        selectedNumbers.append(selectedNumber)
    }
    
    return selectedNumbers
}
