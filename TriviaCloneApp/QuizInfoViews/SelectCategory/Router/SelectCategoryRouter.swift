//
//  SelectCategoryRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation
import UIKit



class SelectCategoryRouter : SelectCategoryRouterProtocol {
    var selectCategoryPresenter: SelectCategoryPresenterProtocol?
    
    
    func goToQuestionNumber(viewName: SelectCategoryViewProtocol) {
        guard let homeView = QuestionNumberRouter.start() else {return}
       
                if let sourceView = viewName as? UIViewController {
                   
                    sourceView.navigationController?.pushViewController(homeView, animated: true)
                
                }
    }
    
    static func start() -> UIViewController? {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: SelectCategoryViewStringConstants.selectCategoryView)
        if var pView = viewController as? SelectCategoryView {
            
            let initialRouter = SelectCategoryRouter()
            var presenter : SelectCategoryPresenterProtocol = SelectCategoryPresenter()
            var interactor : SelectCategoryInteractorProtocol = SelectCategoryInteractor()

            pView.selectCategoryPresenter = presenter
            interactor.selectCategoryPresenter = presenter
            presenter.selectCategoryRouter = initialRouter
            presenter.selectCategoryView = pView
            presenter.selectCategoryInteractor = interactor
            return pView as? UIViewController
        }
        
        
        return viewController
    }
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: SelectCategoryViewStringConstants.main, bundle: Bundle.main)
       }
    
    
}
