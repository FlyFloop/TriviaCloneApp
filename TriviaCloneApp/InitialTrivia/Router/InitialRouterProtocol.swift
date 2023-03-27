//
//  InitialRouterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation
import UIKit

protocol InitialRouterProtocol {
    var initialPresenter : InitialPresenterProtocol? {get set}
    static func start() -> UIViewController?
    func goHomeView(viewName : InitialViewProtocol)
}
/*
 var allMoodsPresenter : AllMoodsPresenterProtocol? {get set}
    
 static func start() -> UIViewController?
 
 func goMoodDetailWRouter(mood : Mood, viewName : AllMoodsViewProtocol)
 */
