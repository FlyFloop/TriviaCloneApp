//
//  QuizResultRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 20.03.2023.
//

import Foundation
import UIKit

protocol QuizResultRouterProtocol {
    var quizResultPresenter : QuizResultPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToHome(viewName : QuizResultViewProtocol)
}
