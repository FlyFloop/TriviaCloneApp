//
//  QuizCheckRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation
import UIKit

class QuizCheckRouter : QuizCheckRouterProtocol {
    var quizCheckPresenter: QuizCheckPresenterProtocol?
    
    
    func goToQuizMultiple(question : [Question], viewName : QuizCheckViewProtocol){
        guard let viewController = QuizMultipleRouter.start() as? QuizMultipleView else {return}
        
        if let safeViewName = viewName as? UIViewController {
            viewController.questions = question
            safeViewName.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    func goToQuizBoolean(question: [Question], viewName: QuizCheckViewProtocol) {
        guard let viewController = QuizBooleanRouter.start() as? QuizBooleanView else {return}
        
        if let safeViewName = viewName as? UIViewController {
            viewController.questions = question
            safeViewName.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    static func start() -> UIViewController? {
        
        let viewController = mainstoryboard.instantiateViewController(withIdentifier: QuizCheckViewStringConstants.quizCheckView)
        
        if var pview = viewController as? QuizCheckViewProtocol {
            var quizCheckRouter = QuizCheckRouter()
            var quizCheckInteractor = QuizCheckInteractor()
            var quizCheckPresenter = QuizCheckPresenter()
            
            pview.quizCheckPresenter = quizCheckPresenter
            
            quizCheckInteractor.quizCheckPresenter = quizCheckPresenter
            quizCheckPresenter.quizCheckInteractor = quizCheckInteractor
            quizCheckPresenter.quizCheckView = pview
            quizCheckPresenter.quizCheckRouter = quizCheckRouter
            
            return pview as? UIViewController
        }
        
        
        return UIViewController()
    }
    
    static var mainstoryboard : UIStoryboard {
        return UIStoryboard(name: QuizCheckViewStringConstants.main, bundle: Bundle.main)
    }
    
    
}
