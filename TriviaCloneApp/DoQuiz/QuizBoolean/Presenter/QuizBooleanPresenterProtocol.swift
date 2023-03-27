//
//  QuizBooleanPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation



protocol QuizBooleanPresenterProtocol  {
    var quizBooleanInteractor : QuizBooleanInteractorProtocol? {get set}
    var quizBooleanView : QuizBooleanViewProtocol? {get set}
    var quizBooleanRouter : QuizBooleanRouterProtocol? {get set}
    func goToQuizResultP(count : Int, incorrectCount : Int, correctCount : Int)
}
