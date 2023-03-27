//
//  QuizResultRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 20.03.2023.
//

import Foundation
import UIKit

class QuizResultRouter : QuizResultRouterProtocol {
    var quizResultPresenter: QuizResultPresenterProtocol?
    
    func goToHome(viewName : QuizResultViewProtocol) {
        guard let viewController = HomeRouter.start() else {return}
        
        if let safeView = viewName as? UIViewController {
            safeView.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    static func start() -> UIViewController? {
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: QuizResultViewStringConstants.quizResultView)
        if var pview = viewController as? QuizResultViewProtocol {
            var router = QuizResultRouter()
            var presenter = QuizResultPresenter()
            var interactor = QuizResultInteractor()
            
            pview.quizResultPresenter = presenter
            presenter.quizResultView = pview
            presenter.quizResultInteractor = interactor
            presenter.quizResultRouter = router
            
            interactor.quizResultPresenter = presenter
            
            return pview as? UIViewController
        }
        return UIViewController()
    }
    static var mainstoryboard : UIStoryboard {
        return UIStoryboard(name: QuizResultViewStringConstants.main, bundle: Bundle.main)
    }
}
