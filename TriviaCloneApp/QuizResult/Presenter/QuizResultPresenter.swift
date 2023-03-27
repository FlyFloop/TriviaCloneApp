//
//  QuizResultPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 20.03.2023.
//

import Foundation



class QuizResultPresenter : QuizResultPresenterProtocol {
    var quizResultView: QuizResultViewProtocol?
    
    var quizResultInteractor: QuizResultInteractorProtocol?
    
    var quizResultRouter: QuizResultRouterProtocol?
    
    func goToHomeP() {
        guard let safeView = quizResultView else {return}
        quizResultRouter?.goToHome(viewName: safeView)
    }
    
}
