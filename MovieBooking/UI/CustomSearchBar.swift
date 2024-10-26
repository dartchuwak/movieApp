//
//  CustomSearchBar.swift
//  MovieBooking
//
//  Created by Evgenii Mikhailov on 26.10.2024.
//

import SwiftUI

struct CustomSearchBar: View {
    @State private var searchText: String = ""
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
            TextField("Search", text: $searchText)
            Image(systemName: "mic.fill")
        }
        .padding(EdgeInsets(top: 7, leading: 8, bottom: 7, trailing: 8))
        .font(.headline)
        .background(.ultraThinMaterial)
        .foregroundStyle(.white.opacity(0.6))
        .cornerRadius(10)
    }
}

#Preview {
    CustomSearchBar()
}
