//
//  SelectCategoryRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation
import UIKit


protocol SelectCategoryRouterProtocol {
    var selectCategoryPresenter : SelectCategoryPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goToQuestionNumber(viewName: SelectCategoryViewProtocol) 
    
}
