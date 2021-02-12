import Foundation

struct Contact {
    let name: String
    let postalCode: Int
    var isFavorite = false
    
    var displayPostalCode: String { "Postal Code: \(String(postalCode))" }
}

