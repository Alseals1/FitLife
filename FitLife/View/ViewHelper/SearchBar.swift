//
//  SearchBar.swift
//  FitLife
//
//  Created by Alandis Seals on 8/19/22.
//

import SwiftUI

struct SearchBar: View {
    @Binding var searchText: String
    var text: String
    var body: some View {
        HStack(spacing: 16) {
           Image(systemName: "magnifyingglass")
            
            TextField(text, text: $searchText)
        }
        .font(.system(size: 14, weight: .medium))
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.buttongrey))
    .padding()
    }
}

struct SearchBar_Previews: PreviewProvider {
    static var previews: some View {
        SearchBar(searchText: .constant(""), text: "Search for a topic...")
    }
}
