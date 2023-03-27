//
//  Question.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation

struct Question : Codable {
    let questionNumber : String?
    let questionDescription : String
    let questionCorrectAnswer : String
    let questionIncorrectAnswers : [String]?
}
