//
//  ContentView.swift
//  Texty
//
//  Created by Martin on 2024/09/02.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = ""
    @State var buttonPressed = 0
    
    var body: some View {
        Spacer()
        
            VStack {
                if buttonPressed == 1 {
                    Text(userText.uppercased())
                        .font(.largeTitle)
                        .padding(.bottom, 100)
                } else if buttonPressed == 2 {
                    Text(userText.capitalized)
                        .font(.largeTitle)
                        .padding(.bottom, 100)
                } else {
                    Text(userText.lowercased())
                        .font(.largeTitle)
                        .padding(.bottom, 100)
                }
            }
            .padding()
            
        Spacer()
        
            VStack {
                TextField("Type here...", text: $userText)
                    .font(.title3)
                    .foregroundColor(.secondary)
                    .padding(.bottom, 20)

                HStack {
                    
                    Button(action: {
                        buttonPressed = 1
                    }) {
                        CustomButtonView(title: "ALL CAPS", color: .orange)
                    }
                    
                    Button(action: {
                        buttonPressed = 2
                    }) {
                        CustomButtonView(title: "1st Letter", color: .blue)
                    }
                    
                    Button(action: {
                        buttonPressed = 3
                    }) {
                        CustomButtonView(title: "lowercase", color: .green)
                    }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
