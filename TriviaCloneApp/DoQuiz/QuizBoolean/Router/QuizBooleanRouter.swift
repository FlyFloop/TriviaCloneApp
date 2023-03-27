//
//  QuizBooleanRouter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation
import UIKit



class QuizBooleanRouter : QuizBooleanRouterProtocol {
    var quizBooleanPresenter: QuizBooleanPresenterProtocol?
    
    func goToQuizResult(viewName : QuizBooleanViewProtocol,count : Int, incorrectCount : Int, correctCount : Int) {
       
        
        if let safeView = viewName as? UIViewController {
            guard let viewController = QuizResultRouter.start() as? QuizResultView else {return}
            viewController.quizLengthValue = count
            viewController.correctAnswerValue = correctCount
            viewController.incorrectAnsertValue = incorrectCount
            safeView.navigationController?.pushViewController(viewController, animated: true)
        }
    }
    
    static func start() -> UIViewController? {

        let viewController = mainstoryboard.instantiateViewController(withIdentifier: QuizBooleanViewStringsConstants.quizBooleanView)
        
        if var pView = viewController as? QuizBooleanViewProtocol {
            let router = QuizBooleanRouter()
            let presenter = QuizBooleanPresenter()
            let interactor = QuizBooleanInteractor()
            
            pView.queestionBoolPresenter = presenter
            presenter.quizBooleanView = pView
            presenter.quizBooleanInteractor = interactor
            presenter.quizBooleanRouter = router
            
            interactor.quizBooleanPresenter = presenter
            
            return pView as? UIViewController
        }
        
        return nil
    }
    static var mainstoryboard : UIStoryboard {
        return UIStoryboard(name: QuizBooleanViewStringsConstants.main, bundle: Bundle.main)
    }
    
    
}
