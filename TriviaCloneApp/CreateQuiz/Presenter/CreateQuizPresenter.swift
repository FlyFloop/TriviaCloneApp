//
//  CreateQuizPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation


class CreateQuizPresenter : CreateQuizPresenterProtocol {
    var createQuizInteractor: CreateQuizInteractorProtocol?
    
    var createQuizRouter: CreateQuizRouterProtocol?
    
    var createQuizView: CreateQuizViewProtocol?
    
    func beginCreateQuiz() {
        guard let safeView = createQuizView else {return}
        createQuizRouter?.goToSelectCategory(viewName: safeView)
    }
    
    
}
