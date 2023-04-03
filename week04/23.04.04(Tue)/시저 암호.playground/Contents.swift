func solution(_ s:String, _ n:Int) -> String {
    var array = s.split(separator: "").map(String($0))
    var newArray = [String]()
    
    enum alphabets: Int {
        case a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z
    }
    
    for text in array {
        if text.isLetter {
            if text.isUppercase {
                text.lowercased()
                newArray
            }
        }
    }
    
    return ''
}
