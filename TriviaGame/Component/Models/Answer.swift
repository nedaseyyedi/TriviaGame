//
//  Answer.swift
//  TriviaGame
//
//  Created by EDA on 6/16/1403 AP.
//

import Foundation

struct Answer: Identifiable{
    
    var id = UUID()
    var text: AttributedString
    var isCorrect: Bool
    
}
