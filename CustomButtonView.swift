//
//  CustomButtonView.swift
//  Texty
//
//  Created by Martin on 2024/09/02.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title: String
    var color: Color
    
    var body: some View {
        Button(title) {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .padding(12)
        .fontWeight(.bold)
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(color)
        .foregroundColor(.white)
        .cornerRadius(12)
    }
}

#Preview {
    CustomButtonView(title: "Button Title", color: .purple)
}
