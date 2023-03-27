//
//  InitialView.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import UIKit

class InitialView: UIViewController, InitialViewProtocol {
    
    var isLoader : Bool? {
        didSet {
         
            
        }
        willSet {
            
            if newValue == true {
              self.loader()
            }
            if newValue == false {
                
                DispatchQueue.main.async {
                    self.dismissLoader()
                    self.initialPresenter?.goToHome()
                }
            
            }
        }
    }
    func checkTDatabaseUrl(result : Bool) {
        if result == true {
                self.isLoader = false
        }
    }
    
    var initialPresenter: InitialPresenterProtocol?
    
    
    func dismissLoader(){
        DispatchQueue.main.async {
            if let topController = UIApplication.shared.keyWindow?.rootViewController {
                var presentedViewController = topController
                
                while let pvc = presentedViewController.presentedViewController {
                    presentedViewController = pvc
                }
                
                if let alertController = presentedViewController as? UIAlertController {
                    alertController.dismiss(animated: true, completion: nil)
                }
            }
            
        }
    }

    func loader()  {
        let alert = UIAlertController(title: nil, message: TInitialViewStringConstants.alertTitle, preferredStyle: .alert)
            let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
            loadingIndicator.hidesWhenStopped = true
       
            loadingIndicator.style = UIActivityIndicatorView.Style.large
       
            loadingIndicator.startAnimating()
            alert.view.addSubview(loadingIndicator)
            present(alert, animated: true, completion: nil)
           
        }
        
      
    
    //initial presenteri aç
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.async {
//            self.isLoader = true
//            self.initialPresenter?.startInitialPresenter()
            self.initialPresenter?.goToHome()
        }
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
  
    

}
