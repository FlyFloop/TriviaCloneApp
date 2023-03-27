//
//  SelectTypePresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation


class SelectTypePresenter : SelectTypePresenterProtocol {
    var selectTypeInteractor: SelectTypeInteractorProtocol?
    
    var selectTypeView: SelectTypeViewProtocol?
    
    var selectTypeRouter: SelectTypeRouterProtocol?
    
    func goToQuizCheck() {
        guard let safeView = selectTypeView else {return}
        selectTypeRouter?.goToQuizCheck(viewName: safeView)
    }
    
    func save(selectedType: String) {
        selectTypeInteractor?.saveSelectedType(selectedType: selectedType)
    }
    
}
