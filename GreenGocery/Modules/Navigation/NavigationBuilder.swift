//
//  NavigationBuilder.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 22/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation
import UIKit

typealias NavigationFactory = (UIViewController) -> (UINavigationController)

class NavigationBuilder {
    static func build(rootView: UIViewController) -> UINavigationController{
       
        let textStyleAttribute: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.init(name: "AvenirNext-DemiBold", size: 22.0)!
        ]
        
        let largeTextStyleAttribute: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white,
            .font: UIFont.init(name: "AvenirNext-DemiBold", size: 28.0)!
        ]
            
        
        let navigationController = UINavigationController(rootViewController: rootView)
        navigationController.navigationBar.barTintColor = UIColor.orange
        navigationController.navigationBar.tintColor = UIColor.white
        navigationController.navigationBar.titleTextAttributes = textStyleAttribute
        navigationController.navigationBar.largeTitleTextAttributes = largeTextStyleAttribute
        navigationController.navigationBar.isTranslucent = false
        navigationController.navigationBar.prefersLargeTitles = true
        
        return navigationController
    }
    
    
}
