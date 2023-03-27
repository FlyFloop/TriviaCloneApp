//
//  SelectDifficultyPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation



protocol SelectDifficultyPresenterProtocol {
    var selectDifficultyInteractor : SelectDifficultyInteractorProtocol? {get set}
    var selectDifficultyyRouter : SelectDifficultyRouterProtocol? {get set}
    var selectDifficultyView : SelectDifficultyViewProtocol? {get set}
    func saveDifficulty(difficulty : String)
    func goToSelectType()
}
