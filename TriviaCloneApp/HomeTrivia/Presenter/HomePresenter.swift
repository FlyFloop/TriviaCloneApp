//
//  HomePresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation


class HomePresenter : HomePresenterProtocol {
    var homeRouter: HomeRouterProtocol?
    
    var homeInteractor: HomeInteractorProtocol?
    
    var homeView: HomeViewProtocol?
    
    func goCreateQuiz() {
        guard let safeHomeView = homeView else {return}
        homeRouter?.goCreateQuiz(viewName: safeHomeView)
    }
 
}
