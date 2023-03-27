//
//  QuizCheckViewProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation



protocol QuizCheckViewProtocol {
    var quizCheckPresenter : QuizCheckPresenterProtocol? {get set}
    
    func showQuiz(quiz : Quiz)
    func createQuiz(questions : [Question], isBoolean : Bool, result : Bool)
}
