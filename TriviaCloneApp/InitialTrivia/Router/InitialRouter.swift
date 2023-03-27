//
//  InitialRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation
import UIKit


class InitialRouter : InitialRouterProtocol {
    var initialPresenter: InitialPresenterProtocol?
    
    
    func goHomeView(viewName: InitialViewProtocol) {
        guard let homeView = HomeRouter.start() else {return}
       
                if let sourceView = viewName as? UIViewController {
                   
                    sourceView.navigationController?.pushViewController(homeView, animated: true)
                
                }
    }
    
    static func start() -> UIViewController? {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: TInitialViewStringConstants.initialView)
        if var pView = viewController as? InitialViewProtocol {
            
            let initialRouter = InitialRouter()
            var presenter : InitialPresenterProtocol = InitialPresenter()
            var interactor : InitialInteractorProtocol = InitialInteractor()

            pView.initialPresenter = presenter
            interactor.initialPresenter = presenter
            presenter.initialRouterProtocol = initialRouter
            presenter.initalViewProtocol = pView
            presenter.initialInteractorProtocol = interactor
            return pView as? UIViewController
        }
        
        
        return viewController
    }
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: TInitialViewStringConstants.mainStoryboard, bundle: Bundle.main)
       }
    
}
