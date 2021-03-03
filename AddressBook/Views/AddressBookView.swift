//
//  AddressBookView.swift
//  AddressBookView
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
            ContactsView()
            Spacer()
            if displayFavoriteCount {
                FavoritesCountView(favoritesCount: viewModel.favoritedContactCount)
            }
            Toggle("Display number of favorites", isOn: $displayFavoriteCount.animation())
                .padding()
        }
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AddressBookView()
    }
}
