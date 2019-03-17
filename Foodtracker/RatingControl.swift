//
//  RatingControl.swift
//  Foodtracker
//
//  Created by Caitlin Palmer-Bright on 17/3/19.
//  Copyright © 2019 Bitsmith. All rights reserved.
//

import UIKit

class RatingControl: UIStackView {
    
    //MARK: Properties
    
    private var ratingButtons = [UIButton]()
    
    var rating = 0
    
    //MARK: Initialisation
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK Button Action
    
    @objc func ratingButtonTapped(button: UIButton) {
        print("Button pressed 👌🏻")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        for _ in 0..<5 {
            // Create the button
            let button = UIButton()
            button.backgroundColor = UIColor.red
            
            // Add Constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // Add the button to the stack
            addArrangedSubview(button)
        }
    }
}
