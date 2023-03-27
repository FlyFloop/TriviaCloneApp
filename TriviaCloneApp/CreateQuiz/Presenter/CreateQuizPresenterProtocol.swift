//
//  CreateQuizPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation


protocol CreateQuizPresenterProtocol {
    var createQuizInteractor : CreateQuizInteractorProtocol? {get set}
    var createQuizRouter : CreateQuizRouterProtocol? {get set}
    var createQuizView : CreateQuizViewProtocol? {get set}
    
    func beginCreateQuiz()
}
