//
//  SelectCategoryViewProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation



protocol SelectCategoryViewProtocol {
    
    var selectCategoryPresenter : SelectCategoryPresenterProtocol? {get set}
    
    func categorySaveResult(result : Bool)
    
}
