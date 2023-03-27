//
//  QuizMultipleRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation
import UIKit


class QuizMultipleRouter : QuizMultipleRouterProtocol {
    var quizMultiplePresenter: QuizMultiplePresenterProtocol?
    
    func goToResult(viewName : QuizMultipleViewProtocol,count : Int, incorrectCount : Int, correctCount : Int) {
      
        
        
        if let sourceView = viewName as? UIViewController {
            guard var viewController = QuizResultRouter.start() as? QuizResultView else {return}
            
            viewController.incorrectAnsertValue = incorrectCount
            viewController.correctAnswerValue = correctCount
            viewController.quizLengthValue = count
            sourceView.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    
    static func start() -> UIViewController? {
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: QuizMultipleViewStringConstants.quizMultipleView)
        
        if var pview = viewController as? QuizMultipleViewProtocol {
            let router = QuizMultipleRouter()
            var presenter = QuizMultiplePresenter()
            var interactor = QuizMultipleInteractor()
            
            pview.quizMultiplePresenterProtocol = presenter
            presenter.quizMultipleView = pview
            presenter.quizMultipleInteractor = interactor
            presenter.quizMultipleRouter = router
            interactor.quizMultiplePresenterProtocol = presenter
            
            return pview as? UIViewController
            
        }
        
        return nil
    }
    
    static var mainstoryboard : UIStoryboard {
        return UIStoryboard(name: QuizMultipleViewStringConstants.main, bundle: Bundle.main)
    }
    
}
