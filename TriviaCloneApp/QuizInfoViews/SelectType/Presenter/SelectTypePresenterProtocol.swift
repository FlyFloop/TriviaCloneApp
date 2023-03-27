//
//  SelectTypePresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation


protocol SelectTypePresenterProtocol {
    var selectTypeInteractor : SelectTypeInteractorProtocol? {get set}
    var selectTypeView : SelectTypeViewProtocol? {get set}
    var selectTypeRouter : SelectTypeRouterProtocol? {get set}
    func goToQuizCheck()
    func save(selectedType : String)
}
