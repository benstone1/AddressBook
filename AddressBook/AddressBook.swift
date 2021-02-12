import Foundation

struct AddressBook {
    private var contacts = [
        Contact(name: "Alexis", postalCode: 12429),
        Contact(name: "Ben", postalCode: 11377),
        Contact(name: "Bhaskar", postalCode: 14204),
        Contact(name: "Galina", postalCode: 13029)
    ]
    
    mutating func toggleFavorite(atIndex index: Int) {
        contacts[index].isFavorite.toggle()
    }
    
    func contact(atIndex index: Int) -> Contact {
        contacts[index]
    }
        
    func contactIsFavorite(atIndex index: Int) -> Bool {
        contacts[index].isFavorite
    }
    
    var numberOfFavorites: Int {
        var count = 0
        
        for contact in contacts {
            if contact.isFavorite {
                count += 1
            }
        }
        return count
    }
    
    var numberOfContacts: Int {
        contacts.count
    }
}
