//
//  QuizMultipleRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation
import UIKit


protocol QuizMultipleRouterProtocol {
    var quizMultiplePresenter : QuizMultiplePresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToResult(viewName : QuizMultipleViewProtocol,count : Int, incorrectCount : Int, correctCount : Int)
}
