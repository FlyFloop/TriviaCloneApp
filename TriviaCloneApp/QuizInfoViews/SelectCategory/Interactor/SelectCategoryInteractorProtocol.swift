//
//  SelectCategoryInteractorProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation



protocol SelectCategoryInteractorProtocol {
    var selectCategoryPresenter : SelectCategoryPresenterProtocol? {get set}
    
    func saveCategory(category : CategoryEnums)
}
