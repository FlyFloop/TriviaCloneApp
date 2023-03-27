//
//  CreateQuizRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation
import UIKit



class CreateQuizRouter : CreateQuizRouterProtocol {
    
    func goToSelectCategory(viewName: CreateQuizViewProtocol) {
        guard let homeView = SelectCategoryRouter.start() else {return}
       
                if let sourceView = viewName as? UIViewController {
                   
                    sourceView.navigationController?.pushViewController(homeView, animated: true)
                
                }
    }
    
   
    var createQuizPresenter: CreateQuizPresenterProtocol?
    
    
  
    
    static func start() -> UIViewController? {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: TCreateQuizViewStrings.createQuizView)
        if var pView = viewController as? CreateQuizViewProtocol {
            
            let initialRouter = CreateQuizRouter()
            var presenter : CreateQuizPresenterProtocol = CreateQuizPresenter()
            var interactor : CreateQuizInteractorProtocol = CreateQuizInteractor()

            pView.createQuizPresenter = presenter
            interactor.createQuizPresenter = presenter
            presenter.createQuizRouter = initialRouter
            presenter.createQuizView = pView
            presenter.createQuizInteractor = interactor
            return pView as? UIViewController
        }
        
        
        return viewController
    }
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: TCreateQuizViewStrings.mainStoryboard, bundle: Bundle.main)
       }
    
}
