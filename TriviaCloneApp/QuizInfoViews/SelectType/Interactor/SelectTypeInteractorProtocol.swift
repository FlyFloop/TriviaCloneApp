//
//  SelectTypeInteractorProtocol.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 16.03.2023.
//

import Foundation


protocol SelectTypeInteractorProtocol {
    var selectTypePresenter : SelectTypePresenterProtocol? {get set}
    func saveSelectedType(selectedType : String)
}
