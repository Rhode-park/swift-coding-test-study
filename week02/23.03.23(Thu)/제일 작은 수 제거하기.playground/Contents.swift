func solution(_ arr:[Int]) -> [Int] {
    var array = arr
    var number = Int()
    
    if arr.count != 1 {
        let minimum = array.min()
        for i in 0...arr.count-1 {
            if array[i] == minimum {
                number = i
            }
        }
        array.remove(at: number)
        
        return array
    }
    
    return [-1]
}
