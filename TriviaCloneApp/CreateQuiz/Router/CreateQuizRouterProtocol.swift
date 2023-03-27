//
//  CreateQuizRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation
import UIKit


protocol CreateQuizRouterProtocol {
    var createQuizPresenter : CreateQuizPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToSelectCategory(viewName: CreateQuizViewProtocol)
}
