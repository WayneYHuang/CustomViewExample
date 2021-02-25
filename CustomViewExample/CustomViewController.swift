//
//  CustomViewController.swift

import UIKit
class CustomViewController: UIViewController {
    
    var customView: CustomView {
        return self.view as! CustomView
    }
    
    override func loadView() {
        let customView = CustomView(frame: UIScreen.main.bounds)
        self.view = customView  // Set view to our custom view
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("View's upon viewDidLoad is: \(self.view.bounds)") // <-- This gives incorrect bounds

        // Add actions for buttons
        customView.snoozeButton.addTarget(self, action: #selector(snoozeButtonPressed), for: .touchUpInside)
        customView.dismissButton.addTarget(self, action: #selector(dismissButtonPressed), for: .touchUpInside)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("View's bounds upon viewDidAppear is: \(self.view.bounds)") // <-- This gives correct bounds
        
        // This doesn't work
//      //self.view.setNeedsLayout()
//      // self.view.layoutIfNeeded()

    }

    
    @objc func snoozeButtonPressed() {
        // Do something here
    }
    
    @objc func dismissButtonPressed() {
        self.dismiss(animated: true, completion: nil)
    }

}
