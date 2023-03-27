//
//  QuestionNumberView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import UIKit

class QuestionNumberView: UIViewController, QuestionNumberViewProtocol, UITextFieldDelegate {
    var questionNumberPresenter: QuestionNumberPresenterProtocol?
    
    @IBOutlet weak var questionNumberTextField: UITextField!
        
    @IBOutlet weak var questionNumberDescriptionLabel: UILabel!
    
    @IBOutlet weak var nextButton: UIButton!
    
    var questionNumberValue : Int? = nil
    
    var isTextFieldNumeric = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionNumberTextField.delegate = self
        questionNumberTextField.layer.cornerRadius = TRadiusConstants.textFieldCornerRadius
        nextButton.layer.cornerRadius = TRadiusConstants.textFieldCornerRadius
        nextButton.setTitle(QuestionNumberViewStringConstants.nextButton, for: .normal  )
        questionNumberTextField.clipsToBounds = true
        nextButton.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        if isTextFieldNumeric {
            guard let safeQuestionNumberValue = questionNumberValue else {return}
            questionNumberPresenter?.saveQuestionNumber(questioNumber: safeQuestionNumberValue)
            questionNumberPresenter?.goToSelectDifficulty()
        }
        else {
            
        }
    }
    



}
