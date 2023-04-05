import Foundation

func solution(_ number:[Int]) -> Int {
    var count = Int()
    var combinations = [[Int]]()

    func combination(array: [Int], n: Int) -> [[Int]] {
        var result = [[Int]]()

        if array.count < n { return result }

        var stack = array.enumerated().map { ([$0.element], $0.offset)}

        while stack.count > 0 {
            let now = stack.removeLast()
            let elements = now.0
            let index = now.1

            if elements.count == n {
                result.append(elements.sorted())
                continue
            }

            guard index+1 <= array.count-1 else { continue }

            for i in index+1...array.count-1 {
                stack.append((elements + [array[i]], i))
            }
        }

        return result
    }

    combinations = combination(array: number, n: 3)

    for combination in combinations {
        let sum = combination.reduce(0) { $0 + $1 }
        if sum == 0 {
            count += 1
        }
    }

    return count
}


//for문 돌리는게 더 나을지도
