//
//  CreateQuizView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import UIKit

class CreateQuizView: UIViewController, CreateQuizViewProtocol {
    var createQuizPresenter: CreateQuizPresenterProtocol?
    
    @IBOutlet weak var createQuizDescriptionLabel: UILabel!
    
    
    @IBOutlet weak var beginButtonPressed: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        createQuizDescriptionLabel.text = TCreateQuizViewStrings.description
        
        
        beginButtonPressed.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        beginButtonPressed.clipsToBounds = true
        
        
        //        questionCategory.addTarget(self, action: #selector(menuButtonTapped(_:)), for: .primaryActionTriggered)
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func beginToQuizButtonPressed(_ sender: UIButton) {
        createQuizPresenter?.beginCreateQuiz()
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
