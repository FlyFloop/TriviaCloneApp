//
//  QuizMultiplePresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation



class QuizMultiplePresenter :QuizMultiplePresenterProtocol {
    var quizMultipleView: QuizMultipleViewProtocol?
    
    var quizMultipleRouter: QuizMultipleRouterProtocol?
    
    var quizMultipleInteractor: QuizMultipleInteractorProtocol?
    
    
    func goToResultView(count : Int, incorrectCount : Int, correctCount : Int) {
        guard let safeView = quizMultipleView else {return}
        quizMultipleRouter?.goToResult(viewName: safeView, count: count, incorrectCount: incorrectCount, correctCount: correctCount)
    }
    
}
