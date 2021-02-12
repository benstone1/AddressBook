import Foundation

class AddressBookViewModel: ObservableObject {
    @Published var addressBook = AddressBook()
                
    var contactCount: Int { addressBook.numberOfContacts }
    
    var favoritedContactCount: Int { addressBook.numberOfFavorites }
}
