//
//  QuizCheckView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import UIKit

class QuizCheckView: UIViewController, QuizCheckViewProtocol {
    
    
    @IBOutlet weak var quizCheckButton: UIButton!
    
    @IBOutlet weak var descriptionLabel: UILabel!
 
    
    @IBOutlet weak var selectedTypeLabel: UILabel!
    
    @IBOutlet weak var questionNumberLabel: UILabel!
    
    @IBOutlet weak var selectedDifficulty: UILabel!
    
    @IBOutlet weak var selectedCategory: UILabel!
    
    var checkQuiz : Quiz? = nil
    var isLoaderDone : Bool = false
    
    private var isLoader : Bool? {
        didSet {
           
        }
        willSet {
            if newValue == true {
                self.loader()
            }
            if newValue == false {
                DispatchQueue.main.async {
                    self.dismissLoader()
                    
                    
                    //will do
//                    let alert = UIAlertController(title: "Try again", message: "Can not found in database.", preferredStyle: .alert)
//                        let alertAction = UIAlertAction(title: "Ok", style: .cancel)
//                        alert.addAction(alertAction)
//                        self.present(alert, animated: true)
//                        print("Quiz cannot found in database please try again with different parameters.)
                }
            }
        }
    }
    
    func createQuiz(questions: [Question], isBoolean: Bool,result : Bool) {
        if result == true {
            if isBoolean {
                self.isLoader = false
                DispatchQueue.main.async {
                  
                    self.quizCheckPresenter?.goToQuizBooleanP(question: questions)
                    
                }
            }
            else{
                self.isLoader = false
                DispatchQueue.main.async {
                  
                    self.quizCheckPresenter?.goToQuizMultipleP(question: questions)
                }
            }

        }
        else {
            DispatchQueue.main.async {
                self.isLoader = false
                self.quizCheckButton.setTitle(QuizCheckViewStringConstants.quizCannotFoundInDatabase, for: .normal)
            }
          
        }
       
    }
    
    func loader()  {
        let alert = UIAlertController(title: nil, message: TInitialViewStringConstants.alertTitle, preferredStyle: .alert)
            let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
            loadingIndicator.hidesWhenStopped = true
            loadingIndicator.style = UIActivityIndicatorView.Style.large
            loadingIndicator.startAnimating()
            alert.view.addSubview(loadingIndicator)
            present(alert, animated: true, completion: nil)
           
        }
        
    func dismissLoader(){
        DispatchQueue.main.async {
            if let topController = UIApplication.shared.keyWindow?.rootViewController {
                var presentedViewController = topController
                
                while let pvc = presentedViewController.presentedViewController {
                    presentedViewController = pvc
                }
                
                if let alertController = presentedViewController as? UIAlertController {
                    alertController.dismiss(animated: true, completion: nil)
                }
            }
            
        }
    }
    
    func showQuiz(quiz: Quiz) {
        selectedTypeLabel.text = "\(QuizCheckViewStringConstants.selectedType): \(quiz.selectedType)"
        questionNumberLabel.text = "\(QuizCheckViewStringConstants.questionNumber): \(quiz.questionNumber)"
        selectedDifficulty.text = "\(QuizCheckViewStringConstants.selectedDifficulty): \(quiz.selectDifficulty)"
        selectedCategory.text = "\(QuizCheckViewStringConstants.selectedCategory): \(quiz.selectedCategory.categoryName)"
        
        checkQuiz = quiz
        
    }
    
    
    var quizCheckPresenter: QuizCheckPresenterProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
     
        quizCheckButton.setTitle(QuizCheckViewStringConstants.createQuiz, for: .normal)
        quizCheckButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        quizCheckButton.clipsToBounds = true
        
        descriptionLabel.text = QuizCheckViewStringConstants.description
    
        quizCheckPresenter?.initGetComponents()
        
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func quizCheckButtonPressed(_ sender: UIButton) {
        guard let safeQuiz = checkQuiz else {return}
        isLoader = true
        quizCheckPresenter?.initQuizCheck(quiz: safeQuiz)
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
