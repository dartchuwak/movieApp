//
//  BookingView.swift
//  MovieBooking
//
//  Created by Evgenii Mikhailov on 28.10.2024.
//

import SwiftUI

struct BookingView: View {
    
    @State var gradinet = [Color("backgroundColor2").opacity(0), Color("backgroundColor2"), Color("backgroundColor2"), Color("backgroundColor2")]
    
    @State var selectedDate = false
    @State var selectedTime = false
    @State var bindingSelection = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                Image("booking")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: .infinity, alignment: .top)
                
                VStack {
                    LinearGradient(colors: gradinet, startPoint: .top, endPoint: .bottom)
                        .frame(height: 600)
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                
                VStack(spacing: 0.0) {
                    HStack {
                        CircleButton(action: { }, image:  "arrow.left")
                        
                        Spacer()
                        CircleButton(action: { }, image:  "ellipsis")
                    }
                    .padding(EdgeInsets(top: 26, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("Docrot Strange")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .padding(.top, 200)
                    
                    Text("in the Multiverse of Madness")
                        .font(.title3)
                        .foregroundStyle(.white)
                    
                    Text("Select a date and time")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    
                    HStack(alignment: .top, spacing: 20) {
                        DateButton(weekDay: "Thu", numDay: "21", isSelected:  $bindingSelection)
                            .padding(.top, 90)
                        DateButton(weekDay: "Fri", numDay: "22", isSelected:  $bindingSelection)
                            .padding(.top, 70)
                        DateButton(weekDay: "Sat", numDay: "23", width: 70, height: 100, isSelected:  $selectedDate) {
                            withAnimation(.spring()) {
                                selectedDate.toggle()
                            }
                            
                        }
                        .padding(.top, 30)
                        DateButton(weekDay: "Sun", numDay: "24", isSelected:  $bindingSelection)
                            .padding(.top, 70)
                        DateButton(weekDay: "Mon", numDay: "25", isSelected:  $bindingSelection)
                            .padding(.top, 90)
                    }
                    
                    HStack(alignment: .top, spacing: 20.0) {
                        TimeButton(hour: "16:00", isSelected: $bindingSelection)
                            .padding(.top, 20)
                        TimeButton(hour: "16:00", isSelected: $bindingSelection)
                        TimeButton(hour: "16:00",width: 70,height: 40, isSelected: $selectedTime) {
                            withAnimation(.spring()) {
                                selectedTime.toggle()
                            }
                        }
                        .padding(.top, -20)
                        TimeButton(hour: "16:00", isSelected: $bindingSelection)
                        TimeButton(hour: "16:00", isSelected: $bindingSelection)
                            .padding(.top, 20)
                    }
                    
                    
                    NavigationLink {
                        Text("Seats View")
                    } label: {
                        LargeButton()
                            .padding(20)
                            .offset(y: selectedDate && selectedTime ? 0 : 200)
                    }
                   
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .top)
                
                
            }
            .background(Color("backgroundColor2"))
            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    BookingView()
}
