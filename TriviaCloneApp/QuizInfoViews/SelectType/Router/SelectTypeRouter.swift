//
//  SelectTypeRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit


class SelectTypeRouter : SelectTypeRouterProtocol {
    var selectTypePresenter: SelectTypePresenterProtocol?
    
    func goToQuizCheck(viewName : SelectTypeViewProtocol) {
        guard let homeView = QuizCheckRouter.start() else {return}
        
        if let view = viewName as? UIViewController {
            view.navigationController?.pushViewController(homeView, animated: true)
        }
    }
    
    static func start() -> UIViewController? {
        
        var viewController = mainStoryboard.instantiateViewController(withIdentifier: SelectTypeViewStringsConstants.selectTypeView)
        
        if var pview = viewController as? SelectTypeViewProtocol {
            var selectTypeRouter = SelectTypeRouter()
            var selectTypePresenter = SelectTypePresenter()
            var selectTypeInteractor = SelectTypeInteractor()
            
            pview.selectTypePresenter = selectTypePresenter
            selectTypeInteractor.selectTypePresenter = selectTypePresenter
            selectTypePresenter.selectTypeInteractor = selectTypeInteractor
            selectTypePresenter.selectTypeRouter = selectTypeRouter
            selectTypePresenter.selectTypeView = pview
            
            return pview as? UIViewController
        }
        
        return UIViewController()
    }
    
    static var mainStoryboard : UIStoryboard {
        return UIStoryboard(name: SelectTypeViewStringsConstants.main, bundle: Bundle.main)
     }
    
}
