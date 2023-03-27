//
//  QuizResultPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 20.03.2023.
//

import Foundation


protocol QuizResultPresenterProtocol {
    var quizResultView : QuizResultViewProtocol? {get set}
    var quizResultInteractor : QuizResultInteractorProtocol? {get set}
    var quizResultRouter : QuizResultRouterProtocol? {get set}
    func goToHomeP()
}
