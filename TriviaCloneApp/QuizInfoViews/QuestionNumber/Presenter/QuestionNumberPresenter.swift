//
//  QuestionNumberPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation



class QuestionNumberPresenter : QuestionNumberPresenterProtocol {
    var questionNumberInteractor: QuestionNumberInteractorProtocol?
    
    var questionNumberRouter: QuestionNumberRouterProtocol?
    
    var questionNumberView: QuestionNumberViewProtocol?
    
    func saveQuestionNumber(questioNumber: Int) {
        questionNumberInteractor?.saveQuestionNumberValue(questionNumber: questioNumber)
    }
    func goToSelectDifficulty() {
        guard let safeView = questionNumberView else {return}
        questionNumberRouter?.goToSelectDifficulty(viewName: safeView)
        
    }
}
