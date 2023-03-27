//
//  QuizCheckRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 17.03.2023.
//

import Foundation
import UIKit

protocol QuizCheckRouterProtocol {
    var quizCheckPresenter : QuizCheckPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToQuizMultiple(question : [Question], viewName : QuizCheckViewProtocol)
    func goToQuizBoolean(question : [Question], viewName : QuizCheckViewProtocol)
}
