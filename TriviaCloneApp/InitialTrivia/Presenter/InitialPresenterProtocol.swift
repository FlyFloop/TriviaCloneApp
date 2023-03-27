//
//  InitialPresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation


protocol InitialPresenterProtocol {
    var initalViewProtocol : InitialViewProtocol? {get set}
    var initialRouterProtocol : InitialRouterProtocol? {get set}
    var initialInteractorProtocol : InitialInteractorProtocol? {get set}
    func verifyTDatabaseUrlPresenter(result : Bool)
    func startInitialPresenter()
    func goToHome()
}
