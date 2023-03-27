//
//  SelectCategoryInteractor.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 15.03.2023.
//

import Foundation




class SelectCategoryInteractor : SelectCategoryInteractorProtocol {
    func saveCategory(category: CategoryEnums) {
        do{
            let categoryModel = Category(categoryId: category.rawValue, categoryName: category.description)
          
            let userDefaults = UserDefaults.standard
            let encoder = JSONEncoder()
            let data = try encoder.encode(categoryModel) 
            userDefaults.set(data, forKey: TUserDefaultsStringsConstants.categoryKey)
            selectCategoryPresenter?.categorySaveResult(result: true)
        } catch {
            print("save category userdefaults interactor error")
        }

    }
    
    var selectCategoryPresenter: SelectCategoryPresenterProtocol?
    
    
}
