//
//  ViewController.swift
//  CalculatorClone
//
//  Created by Rehan Parkar on 2018-02-28.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //outlets
    
    @IBOutlet weak var displayAreaLabel: UILabel!
    
    //variables
    
    var runningNumber = ""
    var rightHandValue = ""
    var leftHandValue = ""
    var result = ""
    var currentOperation: Operation = .NIL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func numberButtonPressed(_ sender: Any) {
        
        runningNumber += "\((sender as AnyObject).tag!)"
        displayAreaLabel.text = runningNumber

        
    }
    
    @IBAction func pointButtonPressed(_ sender: Any) {
        
        runningNumber += "."
        displayAreaLabel.text = runningNumber
        
    }
    
    @IBAction func divideButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func multiplyButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func subtractButtonPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func addButtonPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func equalsButtonPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func allClearButtonPressed(_ sender: Any) {
        
        runningNumber = ""
        leftHandValue = ""
        rightHandValue = ""
        result = ""
        displayAreaLabel.text = "0"
        currentOperation = .NIL
        
        
    }
    
    @IBAction func changeSignButtonPressed(_ sender: Any) {
        
    }
    
    
    @IBAction func percentageButtonPressed(_ sender: Any) {
        
    }
    
    
}

