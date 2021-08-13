//
//  ViewController.swift
//  navbar15
//
//  Created by Yiheng Quan on 13/8/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Button Actions
    @IBAction func showModalTapped(_ sender: UIButton) {
        let dummy = DummyViewController()
        presentWithNavBar(dummy)
    }
    
    @IBAction func showFullScreenTapped(_ sender: UIButton) {
        let dummy = DummyViewController()
        presentWithNavBar(dummy, with: .overFullScreen)
    }
    
    @IBAction func showCustomNavBarTapped(_ sender: UIButton) {
        let dummy = DummyViewController()
        presentWithNavBar(dummy)
    }
}

// MARK: - Helpers
private extension ViewController {
    
    func presentWithNavBar(_ controller: UIViewController, with style: UIModalPresentationStyle = .automatic) {
        let navController = UINavigationController(rootViewController: controller)
        navController.modalPresentationStyle = style
        present(navController, animated: true, completion: nil)
    }
}
