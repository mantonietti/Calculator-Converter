//
//  ViewController.swift
//  Calculator
//
//  Created by Michael Antonietti on 7/19/16.
//  Copyright © 2016 Michael Antonietti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayTextField: UITextField!
    var input = 0
    var oper = ""
    var val = 0
    
    func validateEntry(entry:String) -> Int
    {
        if let value = Int(entry){
            return value
        }
        else{
            return 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTappedAdditionButton(sender: AnyObject) {
        input = validateEntry(displayTextField.text!)
        oper = "+"
        displayTextField.text = ""
    }
    
    
    @IBAction func onTappedSubtractButton(sender: AnyObject) {
        input = validateEntry(displayTextField.text!)
        oper = "-"
        displayTextField.text = ""
    }
    
    
    @IBAction func onTappedDivideButton(sender: AnyObject) {
        input = validateEntry(displayTextField.text!)
        oper = "/"
        displayTextField.text = ""
    }
    
    
    @IBAction func onTappedRemainderButton(sender: AnyObject) {
        input = validateEntry(displayTextField.text!)
        oper = "%"
        displayTextField.text = ""
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let next = validateEntry(displayTextField.text!)
        
        if oper == "+" {
            val = input + next
        } else if oper == "-" {
            val = input - next
        } else if oper == "*" {
            val = input * next
        } else if oper == "/" {
            val = input / next
        } else {
            val = input % next
        }
        let dvc = segue.destinationViewController as! SecondViewController
        dvc.answer = val
        print(val)
    }
    
}

