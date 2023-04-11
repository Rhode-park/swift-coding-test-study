func solution(_ a:Int, _ b:Int) -> String {
    let months = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    var dates = Int()
    
    for i in 0..<a-1 {
        dates += months[i]
    }
    
    dates += b
    
    let dayNumber = dates % 7
    
    switch dayNumber {
    case 0:
        return "THU"
    case 1:
        return "FRI"
    case 2:
        return "SAT"
    case 3:
        return "SUN"
    case 4:
        return "MON"
    case 5:
        return "TUE"
    case 6:
        return "WED"
    default:
        return ""
    }
}
