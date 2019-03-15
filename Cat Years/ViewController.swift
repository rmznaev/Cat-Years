//
//  ViewController.swift
//  Cat Years
//
//  Created by Ramazan Abdullayev on 1/13/19.
//  Copyright © 2019 Ramazan Abdullayev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBAction func getAge(_ sender: UIButton) {
        if let age = ageTextField.text {
            if let ageAsNumber = Int(age) {
                if ageAsNumber < 20 {
                    let ageInCatYears = ageAsNumber * 7
                    resultLabel.text = "Your cat is \(ageInCatYears) in human years"
                } else {
                    resultLabel.text = "Cats live between 15-20 years"
                }
            } else {
                resultLabel.text = "Please enter age as a number"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

