//
//  QuizMultiplePresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation



protocol QuizMultiplePresenterProtocol {
    var quizMultipleView : QuizMultipleViewProtocol? {get set}
    var quizMultipleRouter : QuizMultipleRouterProtocol? {get set}
    var quizMultipleInteractor : QuizMultipleInteractorProtocol? {get set}
    
    func goToResultView(count : Int, incorrectCount : Int, correctCount : Int)
}
