//
//  QuizBooleanPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation



class QuizBooleanPresenter : QuizBooleanPresenterProtocol {
    var quizBooleanInteractor: QuizBooleanInteractorProtocol?
    
    var quizBooleanView: QuizBooleanViewProtocol?
    
    var quizBooleanRouter: QuizBooleanRouterProtocol?
    
    func goToQuizResultP(count : Int, incorrectCount : Int, correctCount : Int) {
        guard let safeView = quizBooleanView else {return}
        quizBooleanRouter?.goToQuizResult(viewName: safeView,count: count,incorrectCount: incorrectCount,correctCount: correctCount)
    }
    
}
