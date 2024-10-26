//
//  TicketView.swift
//  MovieBooking
//
//  Created by Evgenii Mikhailov on 25.10.2024.
//

import SwiftUI

struct TicketView: View {
    @State var animate = false
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
            VStack(spacing: 30) {
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .fontWeight(.bold)
                
            Text("Your ticket is ready to be printed.")
                    .frame(maxWidth: 248)
                    .font(.body)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            
            Tickets()
                .padding(.top, 30)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    TicketView()
}
