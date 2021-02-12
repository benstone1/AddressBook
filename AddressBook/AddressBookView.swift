//
//  ContentView.swift
//  AddressBook
//
//  Created by Ben Stone on 2/12/21.
//

import SwiftUI

struct AddressBookView: View {
    @StateObject var viewModel = AddressBookViewModel()
    
    var body: some View {
        VStack {
            Text("Address Book")
                .font(.title)
            Spacer()
            ContactsView(addressBook: $viewModel.addressBook)
            Spacer()
            FavoritesCountView(favoritesCount: viewModel.favoritedContactCount)
            Spacer()
        }
    }
}

struct ContactsView: View {
    @Binding var addressBook: AddressBook
    
    var body: some View {
        ForEach(0..<addressBook.numberOfContacts) { index in
            HStack {
                ContactView(contact: addressBook.contact(atIndex: index))
                FavoriteButton(addressBook: $addressBook, contactIndex: index)
            }
            .padding()
            .border(Color.black, width: 1)
        }
    }
}

struct ContactView: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            Text(contact.name)
            Text(contact.displayZipCode)
                .font(.caption2)
        }
    }
}

struct FavoriteButton: View {
    @Binding var addressBook: AddressBook
    let contactIndex: Int
    
    var body: some View {
        Button(action: {
            addressBook.toggleFavorite(atIndex: contactIndex)
        }) {
            addressBook.contactIsFavorite(atIndex: contactIndex) ? Image(systemName: "star.fill") : Image(systemName: "star")
        }
    }
}

struct FavoritesCountView: View {
    var favoritesCount: Int
    
    var body: some View {
        HStack {
            Text("You have \(favoritesCount) favorite" + (favoritesCount != 1 ? "s" : ""))
                .padding()
            Spacer()
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}
