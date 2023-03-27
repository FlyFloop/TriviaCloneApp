//
//  SelectDifficultyInteractor.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation


class SelectDifficultyInteractor : SelectDifficultyInteractorProtocol {
    var selectDifficultyPresenter: SelectDifficultyPresenterProtocol?
    
 
    func saveDifficulty(difficulty: String) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(difficulty, forKey: TUserDefaultsStringsConstants.difficultyKey)
    }
  
    
}
