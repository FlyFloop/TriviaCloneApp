//
//  SelectDifficultyRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit


class SelectDifficultyRouter : SelectDifficultyRouterProtocol {
    var selectDifficultyPresenter: SelectDifficultyPresenterProtocol?
    
    
    func goToType(viewName: SelectDifficultyViewProtocol) {
        guard let viewController = SelectTypeRouter.start() else {return}
        
        if let sourceViewController = viewName as? UIViewController {
            sourceViewController.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    
    static func start() -> UIViewController? {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: SelectDifficultyViewStringsConstants.selectDifficultyView)
        if var pview = viewController as? SelectDifficultyViewProtocol {
            var selectDifficultyRouter = SelectDifficultyRouter()
            var presenter = SelectDifficultyPresenter()
            var interactor = SelectDifficultyInteractor()
            pview.selectDifficultyPresenter = presenter
            
            interactor.selectDifficultyPresenter = presenter
            
            presenter.selectDifficultyInteractor = interactor
            presenter.selectDifficultyyRouter = selectDifficultyRouter
            presenter.selectDifficultyView = pview
            return pview as? UIViewController
        }
        return UIViewController()
    }
    
    static var mainStoryboard : UIStoryboard {
        return UIStoryboard(name: SelectDifficultyViewStringsConstants.main, bundle: Bundle.main)
    }
    
    
}
