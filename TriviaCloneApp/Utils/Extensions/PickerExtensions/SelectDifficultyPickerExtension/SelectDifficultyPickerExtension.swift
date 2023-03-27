//
//  SelectDifficultyPickerExtension.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit


extension SelectDifficultyView {
    
  
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedDifficulty = SelectDifficultyViewStringsConstants.difficulties[row]
        selectDifficultyPresenter?.saveDifficulty(difficulty: selectedDifficulty)
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return SelectDifficultyViewStringsConstants.difficulties[row]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return SelectDifficultyViewStringsConstants.difficulties.count
    }
}
