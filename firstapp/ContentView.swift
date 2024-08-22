//
//  ContentView.swift
//  firstapp
//
//  Created by Kavin Saravanan on 8/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = "Baseball"

    @State private var id = 1

    var activities = ["Archery", "Baseball", "Basketball", "Bowling", "Boxing", "Cricket", "Curling", "Fencing", "Golf", "Hiking", "Lacrosse", "Rugby", "Squash"]
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]


    var body: some View {
        VStack{
            Text("Choose yo sport")
                .font(.largeTitle.bold())
            
            Spacer()
            
            VStack{
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(
                        Image(systemName: "figure.\(selected.lowercased())")
                            .font(.system(size: 144))
                            .foregroundColor(.white)
                    )
                
                Text("\(selected)!")
                    .font(.title)
                .transition(.slide)
                .id(id)
            }
            Button("Try again"){
                withAnimation(.easeInOut(duration: 1)){
                    selected=activities.randomElement() ?? "Archery"
                    id += 1
                }
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    ContentView()
}
