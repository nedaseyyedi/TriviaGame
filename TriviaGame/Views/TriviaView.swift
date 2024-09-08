//
//  TriviaView.swift
//  TriviaGame
//
//  Created by EDA on 6/16/1403 AP.
//

import SwiftUI

struct TriviaView: View {
    
    @EnvironmentObject var triviaManager: TriviaManager

    var body: some View {
        
       if triviaManager.reachedEnd {
            VStack(spacing: 20) {
                Text("Trivia Game")
                    .lilacTitle()
                Text("Congratulations, you completed this game! 🥳")
                Text("Your scored \(triviaManager.score) out of \(triviaManager.length)")
                Button {
                    Task.init {
                        await triviaManager.fetchTrivia()
                        
                    }
                }
            label: {
                PrimaryButton(text: "Play again")
            }
            }
            .foregroundColor(Color("AccentColor"))
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
       }
        else {
            
           QuestionView()
                .environmentObject(triviaManager)
            
        }
        
        
    }
}

#Preview {
    TriviaView()
        .environmentObject(TriviaManager())
}
