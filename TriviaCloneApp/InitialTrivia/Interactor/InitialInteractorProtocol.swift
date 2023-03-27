//
//  InitialInteractorProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation



protocol InitialInteractorProtocol {
    var initialPresenter : InitialPresenterProtocol? {get set}
    func verifyTDatabaseUrl(handler :@escaping() -> ())
}
