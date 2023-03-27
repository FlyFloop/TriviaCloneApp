//
//  SelectDifficultyView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import UIKit

class SelectDifficultyView: UIViewController, SelectDifficultyViewProtocol, UIPickerViewDelegate, UIPickerViewDataSource {
    var selectDifficultyPresenter: SelectDifficultyPresenterProtocol?
    
    @IBOutlet weak var difficultyPicker: UIPickerView!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var nextButton: UIButton!
    
    
    var selectedDifficulty = SelectDifficultyViewStringsConstants.difficulties[0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        difficultyPicker.delegate = self
        difficultyPicker.dataSource = self
        
        nextButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        nextButton.clipsToBounds = true
        nextButton.setTitle(SelectDifficultyViewStringsConstants.nextButton, for: .normal)
        descriptionLabel.text = SelectDifficultyViewStringsConstants.description
        selectDifficultyPresenter?.saveDifficulty(difficulty: selectedDifficulty)
        

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        selectDifficultyPresenter?.goToSelectType()
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
