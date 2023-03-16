func solution(_ n:Int64) -> Int64 {
    let halfNumber = Int64(n) / Int64(2)
    var result: Int64 = -1
    
    for divisor in 1...halfNumber+1 {
        let square = divisor * divisor
        while square <= n {
            if square == n {
                result = (divisor+1)*(divisor+1)
            }
        }
    }
    
    return result
}
