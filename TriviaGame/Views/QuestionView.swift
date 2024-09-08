//
//  QuestionView.swift
//  TriviaGame
//
//  Created by EDA on 6/16/1403 AP.
//

import SwiftUI

struct QuestionView: View {
    @EnvironmentObject var triviaManager: TriviaManager
    
    var body: some View {
        VStack(spacing: 40){
            HStack{
                Text("Trivia Game")
                    .lilacTitle()
                Spacer()
                Text("\(triviaManager.index + 1) out of \(triviaManager.length)")
                    .foregroundColor(Color("AccentColor"))
                    .fontWeight(.heavy)
            }
            ProgressBar(progress: triviaManager.progress)
            
            VStack(alignment: .leading, spacing: 20){
                Text(triviaManager.question)
                    .font(.system(size: 20))
                    .bold()
                    .foregroundColor(.gray)
                
                ForEach(triviaManager.answerChoices, id: \.id){ answer in
                    AnswerRow(answer: answer)
                        .environmentObject(triviaManager)
                    
                }
                
            }
            
            Button {
                triviaManager.goNextQuestion()
            }
            label : {
            
                PrimaryButton(text: "Next")
        }
            .disabled(!triviaManager.answerSelected)
            
            Spacer()
            
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(red: 0.984313725490196, green: 0.9294117647058824, blue: 0.8470588235294118))
        .navigationBarHidden(true)
    }
}

#Preview {
    QuestionView()
        .environmentObject(TriviaManager())
}
