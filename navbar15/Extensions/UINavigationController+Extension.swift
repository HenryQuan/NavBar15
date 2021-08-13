//
//  UINavigationController+Extension.swift
//  UINavigationController+Extension
//
//  Created by Yiheng Quan on 13/8/21.
//

import UIKit

extension UINavigationController {
    
    /// This is working on iOS 14 but not on iOS 15
    func applyStyle(tint: UIColor, bar: UIColor, text: UIColor, material: Bool = false, underline: Bool = false) {
        if material {
            // Not used that much
            navigationBar.isTranslucent = true
            navigationBar.backgroundColor = .clear
            navigationBar.barStyle = .default
        } else {
            navigationBar.isTranslucent = false
            navigationBar.barStyle = .black
        }
        
        if underline {
            // Not used that much
            navigationBar.shadowImage = UIImage()
        } else {
            navigationBar.shadowImage = UIImage()
        }
        
        navigationBar.barTintColor = bar
        navigationBar.tintColor = tint
        navigationBar.titleTextAttributes = [.foregroundColor: text]
        
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: text]
    }
}
