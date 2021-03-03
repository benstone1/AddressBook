//
//  ContactInfoView.swift
//  AddressBook
//
//  Created by Ben Stone on 3/3/21.
//

import SwiftUI

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

struct ContactInfoView_Previews: PreviewProvider {
    static var previews: some View {
        ContactInfoView(contact: Contact(name: "Test", postalCode: 12345))
    }
}
