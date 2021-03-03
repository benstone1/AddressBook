//
//  FavoritesCountView.swift
//  AddressBook
//
//  Created by Ben Stone on 3/3/21.
//

import SwiftUI

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

struct FavoritesCountView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesCountView(favoritesCount: 3)
    }
}
