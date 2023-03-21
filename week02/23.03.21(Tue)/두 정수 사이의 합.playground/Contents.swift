func solution(_ a:Int, _ b:Int) -> Int64 {
    var x = Int()
    var y = Int()
    var result = Int64()
    
    if a > b {
        x = a
        y = b
    } else {
        x = b
        y = a
    }
    
    if x < 0, y < 0 {
        let positiveX = 0 - x
        let positiveY = 0 - y
        
        for number in positiveX...positiveY {
            result -= Int64(number)
        }
    } else if x >= 0, y < 0 {
        let positiveY = 0 - y
        
        for number in 0...positiveY {
            result -= Int64(number)
        }
        
        for number in 0...x {
            result += Int64(number)
        }
    } else if x >= 0, y >= 0 {
        for number in y...x {
            result += Int64(number)
        }
    }
    
    return result
}
