//시간 초과 풀이
//func solution(_ n:Int64) -> Int64 {
//    let halfNumber = Int64(n) / Int64(2)
//    var result: Int64 = -1
//
//    for divisor in 1...halfNumber+1 {
//        let square = divisor * divisor
//        while square <= n {
//            if square == n {
//                result = (divisor+1)*(divisor+1)
//            }
//        }
//    }
//
//    return result
//}

//성공 풀이
func solution(_ n:Int64) -> Int64 {
    for divisor in 1...n {
        if Double(n) / Double(divisor) == Double(divisor) {
            return Int64(divisor + 1) * Int64(divisor + 1)
        }
    }
    
    return Int64(-1)
}
