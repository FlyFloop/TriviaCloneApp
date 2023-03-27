//
//  QuizCheckInteractorProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation


protocol QuizCheckInteractorProtocol {
    var quizCheckPresenter : QuizCheckPresenterProtocol? {get set}
    func getComponents()
    func createQuiz(handler :@escaping () -> (),quiz : Quiz)
}
