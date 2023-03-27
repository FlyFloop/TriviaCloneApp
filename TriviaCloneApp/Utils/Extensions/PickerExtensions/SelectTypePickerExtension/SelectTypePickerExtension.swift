//
//  SelectTypePickerExtension.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit


extension SelectTypeView {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        selectedType = SelectTypeViewStringsConstants.types[row]
        selectTypePresenter?.save(selectedType: selectedType)
        
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return SelectTypeViewStringsConstants.types.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return SelectTypeViewStringsConstants.types[row]
    }
    
}
