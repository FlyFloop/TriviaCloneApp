//
//  QuestionNumberInteractorProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation


class QuestionNumberInteractor : QuestionNumberInteractorProtocol {
    func saveQuestionNumberValue(questionNumber: Int) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(questionNumber, forKey: TUserDefaultsStringsConstants.questionNumberKey)
    }
    
    var questionNumberPresenter: QuestionNumberPresenterProtocol?
    
    
}
