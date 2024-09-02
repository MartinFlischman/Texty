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
        Text(title)
            .padding(12)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(12)
    }
}

#Preview {
    CustomButtonView(title: "Button Title", color: .purple)
}
