//
//  QuestionNumberTextFieldExtension.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit



extension QuestionNumberView {
 
    func textFieldDidChangeSelection(_ textField: UITextField) {
       
        guard let safeText = textField.text else {return}
        if let value = Int(safeText) {
            if value > 50 {
                nextButton.setTitle(QuestionNumberViewStringConstants.questionNumberAlert, for: .normal)
                isTextFieldNumeric = false
                return
            }
            else {
                nextButton.setTitle(QuestionNumberViewStringConstants.nextButton, for: .normal)
                isTextFieldNumeric = true
                questionNumberValue = value
            }
        }
        else{
            nextButton.setTitle(QuestionNumberViewStringConstants.onlyNumeric, for: .normal)
            isTextFieldNumeric = false
            return
        }

    }
}
