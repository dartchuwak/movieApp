//
//  ScrollSection.swift
//  MovieBooking
//
//  Created by Evgenii Mikhailov on 26.10.2024.
//

import SwiftUI

struct ScrollSection: View {
    @State var title: String = "Now playing"
    @State var posters: [String] = ["poster1", "poster2", "poster3", "poster4", "poster5", "poster6"]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
                .padding(.horizontal, 20)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(posters.indices, id: \.self) { index in
                        NavigationLink {
                            BookingView()
                        } label: {
                            Image(posters[index])
                                .resizable()
                                .frame(width: 100, height: 130)
                                .cornerRadius(20)
                        }

                       
                    }
                }
                //.offset(x: 20)
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
        }
    }
}

#Preview {
    ScrollSection()
}
