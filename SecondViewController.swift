//
//  SecondViewController.swift
//  Calculator
//
//  Created by Michael Antonietti on 7/25/16.
//  Copyright © 2016 Michael Antonietti. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var answer = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var convertedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = String(answer)
    }
    
    func validateEntry(entry:String) -> Double
    {
        if let value = Double(entry){
            return value
        }
        else {
            return 0
        }
    }
    
    @IBAction func onPressedCalculateButton(sender: AnyObject) {
        convertedLabel.text = String(Int(label.text!)!*100)
        
    }
    
}

