//
//  DummyViewController.swift
//  DummyViewController
//
//  Created by Yiheng Quan on 13/8/21.
//

import Foundation
import UIKit

class DummyViewController: UIViewController {
    
    init() {
        super.init(nibName: "DummyViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Dummy Title"
        
        let closeButton = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(onClose(_:)))
        navigationItem.leftBarButtonItem = closeButton
        
        if let theme = NavBarTheme(rawValue: Int(arc4random()) % 4) {
            print(theme)
            setNavBarTheme(theme)
        }
    }
    
    @IBAction func onNextTapped(_ sender: UIButton) {
        
    }
    
    @objc private func onClose(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
