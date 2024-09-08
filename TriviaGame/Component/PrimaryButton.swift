//
//  PrimaryButton.swift
//  TriviaGame
//
//  Created by EDA on 6/16/1403 AP.
//

import SwiftUI

struct PrimaryButton: View {
    var text : String
    var background = Color("AccentColor")
    var body: some View {
        Text(text).foregroundColor(.white)
            .padding()
            .padding(.horizontal)
            .background(background)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

#Preview {
    PrimaryButton(text: "Next")
}
