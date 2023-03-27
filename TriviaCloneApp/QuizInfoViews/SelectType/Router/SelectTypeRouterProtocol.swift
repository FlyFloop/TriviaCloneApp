//
//  SelectTypeRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation
import UIKit

protocol SelectTypeRouterProtocol {
    var selectTypePresenter : SelectTypePresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToQuizCheck(viewName : SelectTypeViewProtocol)
}
