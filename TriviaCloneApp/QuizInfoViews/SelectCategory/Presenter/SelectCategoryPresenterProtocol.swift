//
//  SelectCategoryPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation



protocol SelectCategoryPresenterProtocol {
    var selectCategoryInteractor : SelectCategoryInteractorProtocol? {get set}
    var selectCategoryRouter : SelectCategoryRouterProtocol? {get set}
    var selectCategoryView : SelectCategoryViewProtocol? {get set}
    
    func beginSaveCategory(category : CategoryEnums)
    func categorySaveResult(result : Bool)
    func goToQuestionNumberView()
}
