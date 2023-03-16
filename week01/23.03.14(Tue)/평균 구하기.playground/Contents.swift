func solution(_ arr:[Int]) -> Double {
    var sum = 0

    for number in arr {
        sum +=  number
    }
    let result = Double(sum) / Double(arr.count)

    return result
}
