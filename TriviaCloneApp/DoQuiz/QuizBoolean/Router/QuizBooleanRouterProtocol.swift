//
//  QuizBooleanRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 19.03.2023.
//

import Foundation
import UIKit

protocol QuizBooleanRouterProtocol {
    var quizBooleanPresenter : QuizBooleanPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToQuizResult(viewName : QuizBooleanViewProtocol,count : Int, incorrectCount : Int, correctCount : Int) 
}
