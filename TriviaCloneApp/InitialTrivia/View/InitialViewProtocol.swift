//
//  InitialViewProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation
import UIKit

protocol InitialViewProtocol {
    var initialPresenter : InitialPresenterProtocol? {get set}
    func checkTDatabaseUrl(result : Bool)
}
