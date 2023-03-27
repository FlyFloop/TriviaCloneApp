//
//  SelectCategoryPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation



class SelectCategoryPresenter : SelectCategoryPresenterProtocol {
    func beginSaveCategory(category: CategoryEnums) {
        selectCategoryInteractor?.saveCategory(category: category)
    }
    func categorySaveResult(result: Bool) {
        selectCategoryView?.categorySaveResult(result: result)
    }
    func goToQuestionNumberView() {
        guard let safeView = selectCategoryView else {return}
        selectCategoryRouter?.goToQuestionNumber(viewName: safeView)
    }
    var selectCategoryInteractor: SelectCategoryInteractorProtocol?
    
    var selectCategoryRouter: SelectCategoryRouterProtocol?
    
    var selectCategoryView: SelectCategoryViewProtocol?
    

}
