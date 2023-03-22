func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    var resultArray: [Int] = Array()
    
    for number in arr {
        if number % divisor == 0 {
            resultArray.append(number)
        }
    }
    
    resultArray.sort()
    
    if resultArray.count == 0 {
        return [-1]
    } else {
        return resultArray
    }
}
