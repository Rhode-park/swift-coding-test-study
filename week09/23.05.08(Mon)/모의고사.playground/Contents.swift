import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let firstNumbers = makeNumber(supoza: .first, questionNumber: answers.count)
    let secondNumbers = makeNumber(supoza: .second, questionNumber: answers.count)
    let thirdNumbers = makeNumber(supoza: .third, questionNumber: answers.count)
    
    let firstMatches = compareNumbers(answers: answers, supoza: firstNumbers)
    let secondMatches = compareNumbers(answers: answers, supoza: secondNumbers)
    let thirdMatches = compareNumbers(answers: answers, supoza: thirdNumbers)
    
    let matches = [firstMatches, secondMatches, thirdMatches]
    
    return chooseWinner(matches: matches)
}

func makeNumber(supoza: Supoza, questionNumber: Int) -> [Int] {
    var supozaNumbers = [Int]()
    var numbers = [Int]()
    
    switch supoza {
    case .first:
        numbers = [1, 2, 3, 4, 5]
    case .second:
        numbers = [2, 1, 2, 3, 2, 4, 2, 5]
    case .third:
        numbers = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    }
    
    for i in 0...questionNumber-1 {
        var index = i
        
        while index>numbers.count-1 {
            index -= numbers.count
        }
        
        supozaNumbers.append(numbers[index])
    }
    
    return supozaNumbers
}

func compareNumbers(answers: [Int], supoza: [Int]) -> Int {
    var count = 0
    
    for i in 0...answers.count-1 {
        if answers[i] == supoza[i] {
            count += 1
        }
    }
    
    return count
}

func chooseWinner(matches: [Int]) -> [Int] {
    var winner = [Int]()
    
    for i in 1...3 {
        if matches[i-1] == matches.max() {
            winner.append(i)
        }
    }
    
    return winner
}

enum Supoza {
    case first
    case second
    case third
}

