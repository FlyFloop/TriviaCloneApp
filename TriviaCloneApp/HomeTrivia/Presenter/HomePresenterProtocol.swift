//
//  HomePresenterProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation




protocol HomePresenterProtocol {
    var homeRouter : HomeRouterProtocol? {get set}
    var homeInteractor : HomeInteractorProtocol? {get set}
    var homeView : HomeViewProtocol? {get set}
    func goCreateQuiz()
}
