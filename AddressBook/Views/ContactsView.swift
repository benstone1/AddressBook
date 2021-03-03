//
//  ContactsView.swift
//  AddressBook
//
//  Created by Ben Stone on 3/3/21.
//

import SwiftUI

struct ContactsView: View {
    @EnvironmentObject var viewModel: AddressBookViewModel
    
    var body: some View {
        ForEach(0..<viewModel.contactCount) { index in
            HStack {
                ContactInfoView(contact: viewModel.contact(atIndex: index))
                Button(action: {
                    viewModel.toggleFavorite(atIndex: index)
                }) {
                    viewModel.contactIsFavorite(atIndex: index) ? Image(systemName: "star.fill") : Image(systemName: "star")
                }
            }
            .padding()
            .border(Color.black, width: 1)
        }
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
            .environmentObject(AddressBookViewModel())
    }
}
