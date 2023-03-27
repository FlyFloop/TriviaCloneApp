//
//  HomeRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation
import UIKit



protocol HomeRouterProtocol {
    var homePresenter : HomePresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goCreateQuiz(viewName : HomeViewProtocol)
}
