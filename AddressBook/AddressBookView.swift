//
//  ContentView.swift
//  AddressBook
//
//  Created by Ben Stone on 2/12/21.
//

import SwiftUI

struct AddressBookView: View {
    @StateObject var viewModel = AddressBookViewModel()
    @State var displayFavoriteCount = true
    
    var body: some View {
        VStack {
            Text("Address Book")
                .font(.title)
            Spacer()
            ContactsView(addressBook: $viewModel.addressBook)
            Spacer()
            if displayFavoriteCount {
                FavoritesCountView(favoritesCount: viewModel.favoritedContactCount)
            }
            Toggle("Display number of favorites", isOn: $displayFavoriteCount.animation())
                .padding()
        }
    }
}

struct ContactsView: View {
    @Binding var addressBook: AddressBook
    
    var body: some View {
        ForEach(0..<addressBook.numberOfContacts) { index in
            HStack {
                ContactInfoView(contact: addressBook.contact(atIndex: index))
                Button(action: {
                    addressBook.toggleFavorite(atIndex: index)
                }) {
                    addressBook.contactIsFavorite(atIndex: index) ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
            }
            .padding()
            .border(Color.black, width: 1)
        }
    }
}

struct ContactInfoView: View {
    let contact: Contact
    
    var body: some View {
        VStack {
            Text(contact.name)
            Text(contact.displayPostalCode)
                .font(.caption2)
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
