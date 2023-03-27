//
//  SelectDifficultyPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation



class SelectDifficultyPresenter : SelectDifficultyPresenterProtocol {
    func saveDifficulty(difficulty: String) {
        selectDifficultyInteractor?.saveDifficulty(difficulty: difficulty)
    }
    func goToSelectType() {
        guard let safeView = selectDifficultyView else {return}
        selectDifficultyyRouter?.goToType(viewName: safeView)
    }
    
    var selectDifficultyInteractor: SelectDifficultyInteractorProtocol?
    
    var selectDifficultyyRouter: SelectDifficultyRouterProtocol?
    
    var selectDifficultyView: SelectDifficultyViewProtocol?
    
    
}
