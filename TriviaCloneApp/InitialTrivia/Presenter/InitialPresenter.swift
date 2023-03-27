//
//  InitialPresenter.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation
import UIKit


class InitialPresenter: InitialPresenterProtocol {
    var initialInteractorProtocol: InitialInteractorProtocol?
    var initalViewProtocol: InitialViewProtocol?
    var initialRouterProtocol : InitialRouterProtocol? 
    
    func verifyTDatabaseUrlPresenter(result: Bool)  {
        initalViewProtocol?.checkTDatabaseUrl(result: result)
    }
    func startInitialPresenter() {
        initialInteractorProtocol?.verifyTDatabaseUrl {
            
        }
    }
    func goToHome() {
        guard let safeView = initalViewProtocol else {return}
        initialRouterProtocol?.goHomeView(viewName: safeView)
    }
    
   
}
