//
//  Contact.swift
//  Contact
//
//  Created by Ben Stone on 2/12/21.
//

import Foundation

struct Contact {
    let name: String
    let postalCode: Int
    var isFavorite = false
    
    var displayPostalCode: String { "Postal Code: \(String(postalCode))" }
}

