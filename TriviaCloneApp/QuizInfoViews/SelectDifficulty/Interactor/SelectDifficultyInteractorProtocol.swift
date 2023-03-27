//
//  SelectDifficultyInteractorProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation



protocol SelectDifficultyInteractorProtocol {
    var selectDifficultyPresenter: SelectDifficultyPresenterProtocol? {get set}
    func saveDifficulty(difficulty : String)
}
