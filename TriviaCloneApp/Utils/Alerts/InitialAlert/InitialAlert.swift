//
//  InitialAlert.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 14.03.2023.
//

import Foundation
import UIKit



struct InitialAlert {
    
    static func loader(navigationController : UINavigationController?)  {
        let alert = UIAlertController(title: nil, message: "Checking sources..", preferredStyle: .alert)
            let loadingIndicator = UIActivityIndicatorView(frame: CGRect(x: 10, y: 5, width: 50, height: 50))
            loadingIndicator.hidesWhenStopped = true
            loadingIndicator.style = UIActivityIndicatorView.Style.large
            loadingIndicator.startAnimating()
            alert.view.addSubview(loadingIndicator)
        navigationController?.present(alert, animated: true, completion: nil)
           
        }
    
//    //close all uialertcontrollers
//    static func dismissLoader(){
//        DispatchQueue.main.async {
//            if let topController = UIApplication.shared.keyWindow?.rootViewController {
//                var presentedViewController = topController
//                
//                while let pvc = presentedViewController.presentedViewController {
//                    presentedViewController = pvc
//                }
//                
//                if let alertController = presentedViewController as? UIAlertController {
//                    alertController.dismiss(animated: true, completion: nil)
//                }
//            }
//        }
//    }
}
