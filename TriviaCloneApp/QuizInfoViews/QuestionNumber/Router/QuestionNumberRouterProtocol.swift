//
//  QuestionNumberRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit


protocol QuestionNumberRouterProtocol {
    var questionNumberPresenter : QuestionNumberPresenterProtocol? {get set}
    
    static func start() -> UIViewController?
    
    func goToSelectDifficulty(viewName: QuestionNumberViewProtocol)
}
