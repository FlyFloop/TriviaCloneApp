//
//  QuizMultipleView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import UIKit

class QuizMultipleView: UIViewController, QuizMultipleViewProtocol {
    var quizMultiplePresenterProtocol: QuizMultiplePresenterProtocol?
    
    var questions: [Question]? = nil
    var questionCount : Int = 0
    var correctAnswerIndex : Int = 0
    var correctQuestionCounter : Int = 0
    var timerCount : Int = 30
    var timer = Timer()
 
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    
    private func configureButtons(){
        buttonA.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        buttonA.clipsToBounds = true
        buttonB.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        buttonB.clipsToBounds = true
        buttonC.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        buttonC.clipsToBounds = true
        buttonD.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        buttonD.clipsToBounds = true
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard questions != nil else {return}
        self.navigationItem.hidesBackButton = true
        configureButtons()
        prepareQuestions()
       

        NavigationTitleTextColorConfigure.configureNavigationTitle(title: "\(questions!.count) Questions :\(questionCount + 1)/\(questions!.count)", navigationItem: self.navigationItem, navigationController: self.navigationController)
        

       
    }
    private func prepareQuestions(){
        if questionCount >= questions!.count {
            let incorrect : Int = questions!.count - correctQuestionCounter
            quizMultiplePresenterProtocol?.goToResultView(count: questions!.count, incorrectCount: incorrect, correctCount: correctQuestionCounter)
            return
        }
       
        questionLabel.text = questions![questionCount].questionDescription
        
        var answers : [String] = []
        
        answers.append(questions![questionCount].questionCorrectAnswer)
        
        answers.append(contentsOf: questions![questionCount].questionIncorrectAnswers!)
        
        answers.shuffle()
        
        findCorrectAnswerInArray(answers: answers, correctAnswer: questions![questionCount].questionCorrectAnswer)
        prepareQuestionButtons(buttonAString: answers[0], buttonBString: answers[1], buttonCString: answers[2], buttonDString: answers[3])
       

        
        
        NavigationTitleTextColorConfigure.configureNavigationTitle(title: "\(String(describing: questions!.count)) Questions :\(questionCount + 1)/\(questions!.count)", navigationItem: self.navigationItem, navigationController: self.navigationController)
   
        
       setTimer()
        
    }
    
    
    private func findCorrectAnswerInArray(answers : [String], correctAnswer : String)  {
        correctAnswerIndex = 0
        for answer in answers {
            if answer == correctAnswer {
             break
            }
            else {
                correctAnswerIndex += 1
            }
        }
    }
    
    private func prepareQuestionButtons(buttonAString : String,buttonBString : String,buttonCString : String,buttonDString : String){
        buttonA.setTitle(buttonAString, for: .normal)
        buttonB.setTitle(buttonBString, for: .normal)
        buttonC.setTitle(buttonCString, for: .normal)
        buttonD.setTitle(buttonDString, for: .normal)
    }
    
    func setTimer(){
        timerCount = 30
     timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func buttonPressed(_ sender: UIButton) {
       
        
       
        
        if sender.tag == correctAnswerIndex {
            correctQuestionCounter += 1
           
            
        }
        else {
           
        }
        timer.invalidate()
        questionCount += 1
        prepareQuestions()
    
    }
    @objc func timerFunction(){
        setTimerLabel()
      
    }
    func setTimerLabel(){
        if timerCount == 0 {
            timerLabel.text = "\(timerCount)"
            timer.invalidate()

            prepareQuestions()
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
