//
//  AddressBookViewModel.swift
//  AddressBookViewModel
//
//  Created by Ben Stone on 2/12/21.
//

import Foundation

class AddressBookViewModel: ObservableObject {
    @Published var addressBook = AddressBook()
    
    var contactCount: Int { addressBook.numberOfContacts }
    
    var favoritedContactCount: Int { addressBook.numberOfFavorites }
}
