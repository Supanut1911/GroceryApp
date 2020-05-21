//
//  AddBagControlView.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import UIKit

class AddBagControlView: UIView, ViewLoadable {
    static var nibName: String = "AddBagControl"
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    @IBOutlet weak var stepLabel: UILabel!
    
    var stepperValue: Int = 0 {
        didSet {
            let isHidden = (stepperValue > 0)
            addButton.isHidden = isHidden
            plusButton.isHidden = !isHidden
            minusButton.isHidden = !isHidden
            stepLabel.isHidden = !isHidden
            stepLabel.text = "\(stepperValue)"
        }
    }

    @IBAction func addButtonDidTap(_ sender: Any) {
        stepperValue = 1
    }
    
    @IBAction func incrementDidTap(_ sender: Any) {
        stepperValue += 1
    }
    
    @IBAction func decrementDidTap(_ sender: Any) {
        stepperValue -= 1
    }
    
    
    func config() -> Void {
        stepperValue = 0
    }
}

