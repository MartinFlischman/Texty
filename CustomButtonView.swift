//
//  CustomButtonView.swift
//  Texty
//
//  Created by Martin on 2024/09/02.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        Button("ALL CAPS") {
            /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
        }
        .padding()
        .fontWeight(.bold)
        .background(Color.blue)
        .foregroundColor(.white)
        .cornerRadius(12)
    }
}

#Preview {
    CustomButtonView()
}
