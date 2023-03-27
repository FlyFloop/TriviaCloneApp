//
//  HomeView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import UIKit

class HomeView: UIViewController, HomeViewProtocol {
    var homePresenter: HomePresenterProtocol?
    

    @IBOutlet weak var getQuizButton: UIButton!
    
    @IBOutlet weak var quizHistoryButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.hidesBackButton = true
        getQuizButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        getQuizButton.clipsToBounds = true
        quizHistoryButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        quizHistoryButton.clipsToBounds = true
        
    }
    
    @IBAction func getQuizButtonPressed(_ sender: UIButton) {
        homePresenter?.goCreateQuiz()
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
