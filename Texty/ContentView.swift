//
//  ContentView.swift
//  Texty
//
//  Created by Martin on 2024/09/02.
//

import SwiftUI

struct ContentView: View {
    
    @State var userText = ""
    
    var body: some View {
        VStack {
            Text(userText)
                .font(.largeTitle)
                .padding(.bottom, 100)
            
            TextField("Enter your text here...", text: $userText)
                .font(.title3)
                .foregroundColor(.secondary)
                .padding(.bottom, 20)
            
            HStack {
                CustomButtonView()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
