//
//  QuestionNumberPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation



protocol QuestionNumberPresenterProtocol {
    var questionNumberInteractor : QuestionNumberInteractorProtocol? {get set}
    var questionNumberRouter : QuestionNumberRouterProtocol? {get set}
    var questionNumberView : QuestionNumberViewProtocol? {get set}
    func saveQuestionNumber(questioNumber : Int)
    func goToSelectDifficulty()
}
