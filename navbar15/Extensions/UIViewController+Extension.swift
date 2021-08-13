//
//  UIViewController+Extension.swift
//  UIViewController+Extension
//
//  Created by Yiheng Quan on 13/8/21.
//

import UIKit

enum NavBarTheme: Int {
    
    static let darkColor = UIColor.black
    static let darkTintColor = UIColor.white
    
    static let lightColor = UIColor.lightGray
    static let lightTintColor = UIColor.darkGray
    
    static let whiteColor = UIColor.white
    static let whiteTintColor = UIColor.black
    
    static let blueColor = UIColor.blue
    static let blueTintColor = UIColor.orange
    
    case dark
    case light
    case white
    case blue
    
    func colors() -> (UIColor, UIColor) {
        switch self {
        case .dark:
            return (Self.darkColor, Self.darkTintColor)
        case .light:
            return (Self.lightColor, Self.lightTintColor)
        case .white:
            return (Self.whiteColor, Self.whiteTintColor)
        case .blue:
            return (Self.blueColor, Self.blueTintColor)
        }
    }
}

extension UIViewController {

    func setNavBarTheme(_ theme:NavBarTheme) {
        let (bar, tintColor) = theme.colors()
        navigationController?.applyStyle(tint: tintColor, bar: bar, text: .white)
    }
}
