//
//  CustomView.swift


import UIKit

class CustomView: UIView {
    
    public var snoozeButton: UIButton = {
        let button = UIButton(type: .system)
        button.isUserInteractionEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Snooze", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.layer.cornerRadius = 14
        return button
    }()
    
    public var dismissButton: UIButton = {
        let button = UIButton(type: .system)
        button.isUserInteractionEnabled = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Turn off alarm", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        button.setTitleColor(UIColor.white, for: .normal)
        button.backgroundColor = UIColor.clear
        button.layer.cornerRadius = 14
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.white.cgColor
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupUI() {
        self.backgroundColor = .systemPurple
        
        // Add subviews
        self.addSubview(snoozeButton)
        self.addSubview(dismissButton)
    }
    
    func setupConstraints() {
        
        print("Self.bounds when setting up custom view constraints is: \(self.bounds)")  
        
        NSLayoutConstraint.activate([
        
            dismissButton.heightAnchor.constraint(equalToConstant: 60),
            dismissButton.widthAnchor.constraint(equalToConstant: self.bounds.width * 0.7),  // <-- This gives incorrect bounds
            dismissButton.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            dismissButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        
            snoozeButton.heightAnchor.constraint(equalToConstant: 60),
            snoozeButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            snoozeButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            snoozeButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40)
    
        ])
            
    }
}
