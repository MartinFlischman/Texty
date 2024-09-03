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
    @FocusState private var isTextFieldFocused: Bool
    @State private var showCopyMessage = false

    var body: some View {
              
        Text("Texty_")
            .font(.system(size: 56))
            .bold()
            .padding(.top, 30)
        
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
                .focused($isTextFieldFocused)
            
            HStack {
                Button(action: {
                    isTextFieldFocused = false
                    buttonPressed = 1
                }) {
                    CustomButtonView(title: "ALL CAPS", color: .orange)
                }
                
                Button(action: {
                    isTextFieldFocused = false
                    buttonPressed = 2
                }) {
                    CustomButtonView(title: "1st Letter", color: .blue)
                }
                
                Button(action: {
                    isTextFieldFocused = false
                    buttonPressed = 3
                }) {
                    CustomButtonView(title: "lower case", color: .green)
                }
            }
            
            HStack {
                Button(action: {
                    if !userText.isEmpty {
                        var textToCopy = userText
                        if buttonPressed == 1 {
                            textToCopy = userText.uppercased()
                        } else if buttonPressed == 2 {
                            textToCopy = userText.capitalized
                        } else if buttonPressed == 3 {
                            textToCopy = userText.lowercased()
                        }
                        UIPasteboard.general.string = textToCopy
                        isTextFieldFocused = false
                        showCopyMessage = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                            showCopyMessage = false
                        }
                    }
                })
 {
                    HStack {
                        Image(systemName: "doc.on.doc.fill")
                            .foregroundColor(.white)
                        Text("Copy")
                            .bold()
                    }
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .background(Color.purple)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }

                Button(action: {
                    userText = ""
                    UIPasteboard.general.string = ""
                    isTextFieldFocused = false
                }) {
                    HStack {
                        Image(systemName: "trash.fill")
                            .foregroundColor(.white)
                        Text("Delete")
                            .bold()
                    }
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(12)
                }
            }
        }
        .padding()
        .overlay(
            VStack {
                if showCopyMessage {
                    Text("Copied!")
                        .bold()
                        .foregroundColor(.purple)
                        .padding()
                        .background(Color.white)
                        .cornerRadius(12)
                        .shadow(radius: 10)
                }
            }
            .padding()
            , alignment: .top
        )
    }
}

#Preview {
    ContentView()
}
