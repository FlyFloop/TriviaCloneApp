//
//  QuestionNumberInteractor.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation


protocol QuestionNumberInteractorProtocol {
    var questionNumberPresenter : QuestionNumberPresenterProtocol? {get set}
    func saveQuestionNumberValue(questionNumber : Int)
}
