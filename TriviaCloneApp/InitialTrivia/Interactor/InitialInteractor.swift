//
//  InitialInteractor.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation



class InitialInteractor : InitialInteractorProtocol {
    
    var initialPresenter: InitialPresenterProtocol?
    
    func verifyTDatabaseUrl(handler: @escaping () -> ()) {
        guard let url = URL(string: TInitialViewStringConstants.triviaDatabaseUrl) else {return}
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = TInitialViewStringConstants.httpRequestMethod
        let task = URLSession.shared.dataTask(with: urlRequest) { data, urlResponse, error in
        
            if error != nil {
                return
            }
         
            
            guard let httpResponse = urlResponse as? HTTPURLResponse else {
                
                return}
        
          
            if httpResponse.statusCode == 200 {
                
                self.initialPresenter?.verifyTDatabaseUrlPresenter(result: true)
                return
            }
            
            self.initialPresenter?.verifyTDatabaseUrlPresenter(result: false)
            return
        }
        task.resume()
        
        
    }
    
    
}
