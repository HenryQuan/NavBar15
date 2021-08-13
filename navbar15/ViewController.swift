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
        dummy.modalPresentationStyle = .overFullScreen
        presentWithNavBar(dummy)
    }
    
    @IBAction func showCustomNavBarTapped(_ sender: UIButton) {
        let dummy = DummyViewController()
        presentWithNavBar(dummy)
    }
}

// MARK: - Helpers
private extension ViewController {
    
    func presentWithNavBar(_ controller: UIViewController) {
        let navController = UINavigationController(rootViewController: controller)
        present(navController, animated: true, completion: nil)
    }
}
