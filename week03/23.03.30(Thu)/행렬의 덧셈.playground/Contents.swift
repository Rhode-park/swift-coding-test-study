func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var externalArray = [[Int]]()
    
    for i in 0...arr1.count-1 {
        var internalArray = [Int]()
        
        for j in 0...arr1[i].count-1 {
            internalArray.append(arr1[i][j] + arr2[i][j])
        }
        
        externalArray.append(internalArray)
    }
    
    return externalArray
}
