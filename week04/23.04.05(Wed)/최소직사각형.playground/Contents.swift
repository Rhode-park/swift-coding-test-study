import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var nameCardSizes = [[Int]]()
    var width = Int()
    var height = Int()
    
    for size in sizes {
        var nameCard = [Int]()
        if size[0] >= size[1] {
            nameCard.append(size[0])
            nameCard.append(size[1])
        } else {
            nameCard.append(size[1])
            nameCard.append(size[0])
        }
        nameCardSizes.append(nameCard)
    }
    
    for nameCardSize in nameCardSizes {
        width = max(width, nameCardSize[0])
        height = max(height, nameCardSize[1])
    }
    
    return width * height
}
