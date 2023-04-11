import Foundation

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var bottle = n
    var cola = Int()
    var totalCola = Int()
    
    while bottle > 1 {
        cola = (bottle / a) * b
        bottle = bottle % a + cola
        totalCola += cola
        
        if bottle < a {
            break
        }
    }
    
    return totalCola
}
