//
//  QuizBooleanView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import UIKit

class QuizBooleanView: UIViewController, QuizBooleanViewProtocol {
    var queestionBoolPresenter: QuizBooleanPresenterProtocol?
    
    
    var questions : [Question]? = nil
    var questionCount : Int = 0
    var timerCount : Int = 30
    var timer = Timer()
    var correctAnswer : String? = nil
    var correctQuestionCounter : Int = 0
    
    @IBOutlet weak var questionDescriptionLabel: UILabel!
    
    @IBOutlet weak var timerLabel: UILabel!
    
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard questions != nil else {return}
        configureButtons()
        prepareQuiz()
        NavigationTitleTextColorConfigure.configureNavigationTitle(title: "\(String(describing: questions!.count)) Questions :\(questionCount + 1)/\(questions!.count)", navigationItem: self.navigationItem, navigationController: self.navigationController)
        
    }
    
    private func prepareQuiz(){
        if questionCount >= questions!.count {
            let incorrect = questions!.count - correctQuestionCounter
            queestionBoolPresenter?.goToQuizResultP(count: questions!.count, incorrectCount: incorrect, correctCount: correctQuestionCounter)
        
            return
        }
        correctAnswer = questions![questionCount].questionCorrectAnswer
        questionDescriptionLabel.text = questions![questionCount].questionDescription
        NavigationTitleTextColorConfigure.configureNavigationTitle(title: "\(String(describing: questions!.count)) Questions :\(questionCount + 1)/\(questions!.count)", navigationItem: self.navigationItem, navigationController: self.navigationController)
        setTimer()
    }
    
    private func configureButtons(){
        trueButton.setTitle(QuizBooleanViewStringsConstants.trueString, for: .normal)
        falseButton.setTitle(QuizBooleanViewStringsConstants.falseString, for: .normal)
        trueButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        trueButton.clipsToBounds = true
        falseButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        falseButton.clipsToBounds = true
    }
    
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        guard let safeCorrectAnswer = correctAnswer else {return}
        if sender.titleLabel?.text == safeCorrectAnswer {
            print("doğru cevap")
            correctQuestionCounter += 1
        }
        else {
            
        }
        timer.invalidate()
        questionCount += 1
        prepareQuiz()
    }
    func setTimer(){
        timerCount = 30
     timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    @objc func timerFunction(){
        setTimerLabel()
      
    }
    func setTimerLabel(){
        if timerCount == 0 {
            timerLabel.text = "\(timerCount)"
            timer.invalidate()

            prepareQuiz()
            return
        }
        timerLabel.text = "\(timerCount)"
        timerCount -= 1
       
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
