//
//  BlankViewController.swift


import UIKit
class BlankViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let customVC = CustomViewController()
        self.present(customVC, animated: true, completion: nil)
    }
}
