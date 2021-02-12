import Foundation

struct Contact {
    let name: String
    let zipCode: Int
    var isFavorite = false
    
    var displayZipCode: String { "Zip Code: \(String(zipCode))" }
}

