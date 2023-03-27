//
//  HomeRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation
import UIKit



class HomeRouter : HomeRouterProtocol {
    var homePresenter: HomePresenterProtocol?
    
    
    static func start() -> UIViewController? {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: "homeView")
        if var pView = viewController as? HomeViewProtocol {
       
            let initialRouter = HomeRouter()
            var presenter : HomePresenterProtocol = HomePresenter()
            var interactor : HomeInteractorProtocol = HomeInteractor()

            pView.homePresenter = presenter
            interactor.homePresenter = presenter
            presenter.homeRouter = initialRouter
            presenter.homeView = pView
            presenter.homeInteractor = interactor
            return pView as? UIViewController
        }
        
        
        return viewController
    }
    
    func goCreateQuiz(viewName: HomeViewProtocol) {
        guard let homeView = CreateQuizRouter.start() else {return}
       
                if let sourceView = viewName as? UIViewController {
                   
                    sourceView.navigationController?.pushViewController(homeView, animated: true)
                
                }
    }
    
    static var mainStoryboard: UIStoryboard {
           return UIStoryboard(name: "Main", bundle: Bundle.main)
       }
}
