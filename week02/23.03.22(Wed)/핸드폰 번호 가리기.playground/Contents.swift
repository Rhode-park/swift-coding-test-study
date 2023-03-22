func solution(_ phone_number:String) -> String {
    var phoneNumber = String()
    var count = 0
    
    for character in phone_number {
        if count < phone_number.count-4 {
            phoneNumber += "*"
            count += 1
        } else {
            phoneNumber += String(character)
        }
    }
    
    return phoneNumber
}
