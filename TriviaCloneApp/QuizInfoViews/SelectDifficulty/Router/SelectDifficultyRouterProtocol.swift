//
//  SelectDifficultyRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit

protocol SelectDifficultyRouterProtocol {
    var selectDifficultyPresenter : SelectDifficultyPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToType(viewName : SelectDifficultyViewProtocol)
}
