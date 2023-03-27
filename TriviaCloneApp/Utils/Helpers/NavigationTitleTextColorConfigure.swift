//
//  NavigationTitleTextColorConfigure.swift
//  TriviaCloneApp
//
//  Created by Alper Yorgun on 13.03.2023.
//

import Foundation
import UIKit



struct NavigationTitleTextColorConfigure {
    static func configureNavigationTitle(title : String, navigationItem : UINavigationItem?, navigationController : UINavigationController?) {
        navigationItem?.title = title
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
    }
}
