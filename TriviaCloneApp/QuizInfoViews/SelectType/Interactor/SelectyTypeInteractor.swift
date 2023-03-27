//
//  SelectyTypeInteractor.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation



class SelectTypeInteractor : SelectTypeInteractorProtocol {
    var selectTypePresenter: SelectTypePresenterProtocol?
    func saveSelectedType(selectedType: String) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(selectedType, forKey: TUserDefaultsStringsConstants.selectedTypeKey)
    }
    
}
