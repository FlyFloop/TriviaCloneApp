//
//  SelectTypeView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import UIKit

class SelectTypeView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate, SelectTypeViewProtocol {
    
    var selectTypePresenter: SelectTypePresenterProtocol?
   
    @IBOutlet weak var nextButton: UIButton!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var typePickerView: UIPickerView!
    
    
    var selectedType : String = SelectTypeViewStringsConstants.types[0]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        typePickerView.dataSource = self
        typePickerView.delegate = self
        
        selectTypePresenter?.save(selectedType: selectedType)
        
        
        descriptionLabel.text = SelectTypeViewStringsConstants.description
        nextButton.setTitle(SelectTypeViewStringsConstants.nextButton, for: .normal)
        
        nextButton.layer.cornerRadius = TRadiusConstants.buttonCornerRadius
        nextButton.clipsToBounds = true

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        
        selectTypePresenter?.goToQuizCheck()
        
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
