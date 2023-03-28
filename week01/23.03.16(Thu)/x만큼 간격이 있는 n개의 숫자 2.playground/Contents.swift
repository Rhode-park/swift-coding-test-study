func solution(_ x:Int, _ n:Int) -> [Int64] {
    var results: [Int64] = []
    
    for multiplier in 1...n {
        let result = Int64(x * multiplier)
        results.append(result)
    }
    
    return results
}

