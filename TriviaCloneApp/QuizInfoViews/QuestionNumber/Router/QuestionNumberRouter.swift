//
//  QuestionNumberRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit

class QuestionNumberRouter : QuestionNumberRouterProtocol {
    var questionNumberPresenter: QuestionNumberPresenterProtocol?
    
    func goToSelectDifficulty(viewName: QuestionNumberViewProtocol) {
        guard  let viewController = SelectDifficultyRouter.start() else {return}
        
        if let sourceView = viewName as? UIViewController {
            
            sourceView.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    static func start() -> UIViewController? {
        let viewController = mainStoryboard.instantiateViewController(withIdentifier: QuestionNumberViewStringConstants.questionNumberView)
        
        if var pview = viewController as? QuestionNumberViewProtocol {
            var questionNumberRouter = QuestionNumberRouter()
            var presenter : QuestionNumberPresenterProtocol = QuestionNumberPresenter()
            var interactor : QuestionNumberInteractorProtocol = QuestionNumberInteractor()
            presenter.questionNumberView = pview
            presenter.questionNumberInteractor = interactor
            presenter.questionNumberRouter = questionNumberRouter
            pview.questionNumberPresenter = presenter
            interactor.questionNumberPresenter = presenter
         
            return pview as? UIViewController
        }
        
     
        
        return UIViewController()
    }
    
    static var mainStoryboard : UIStoryboard {
        return UIStoryboard(name: QuestionNumberViewStringConstants.main, bundle: Bundle.main)
    }
    
}
