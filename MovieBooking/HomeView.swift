//
//  HomeView.swift
//  MovieBooking
//
//  Created by Evgenii Mikhailov on 26.10.2024.
//

import SwiftUI

struct HomeView: View {
    @State private var animate: Bool = false
    var body: some View {
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x: animate ? -50 : -130, y: animate ? -30: -100)
                .task {
                    withAnimation(.easeInOut(duration: 7).repeatForever()) {
                        animate.toggle()
                    }
                }
            CircleBackground(color: Color("pinkCircle"))
                .blur(radius: animate ? 30 : 100)
                .offset(x:animate ? 100 : 130, y: animate ? 150 : 100)
             
            VStack(spacing: 0) {
                Text("Choose Movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundStyle(.white)
                
                CustomSearchBar()
                    .padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            
            
        }
        .background {
            LinearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2")], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        }
    }
}

#Preview {
    HomeView()
}
