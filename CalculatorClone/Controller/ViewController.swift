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
        
        if runningNumber.count <= 9 {  //only 9 digits can fit on the label
            
        runningNumber += "\((sender as AnyObject).tag!)"
            displayAreaLabel.text = runningNumber
            
        }

        
    }
    
    @IBAction func pointButtonPressed(_ sender: Any) {
        
        if runningNumber.count <= 8  { //so
            
            self.runningNumber += "."
            self.displayAreaLabel.text = self.runningNumber
            
        }
        
    }
    
    @IBAction func divideButtonPressed(_ sender: Any) {
        
        operationPerformed(operation: .divide)
        
    }
    
    @IBAction func multiplyButtonPressed(_ sender: Any) {
        
        operationPerformed(operation: .multiply)
        
    }
    
    @IBAction func subtractButtonPressed(_ sender: Any) {
        
        operationPerformed(operation: .subtract)
        
    }
    
    
    @IBAction func addButtonPressed(_ sender: Any) {
        
        operationPerformed(operation: .add)
        
    }
    
    
    @IBAction func equalsButtonPressed(_ sender: Any) {
        
        operationPerformed(operation: currentOperation)
        
        
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
    
    
    func operationPerformed(operation: Operation) {
        
        if currentOperation != .NIL {
            
            if runningNumber != "" {
                
                rightHandValue = runningNumber
                runningNumber = ""
                
                switch currentOperation {
                    
                case .add: result = "\(Double(leftHandValue)! + Double(rightHandValue)!)"
                    
                case .subtract: result = "\(Double(leftHandValue)! - Double(rightHandValue)!)"
                    
                case .multiply: result = "\(Double(leftHandValue)! * Double(rightHandValue)!)"
                    
                case .divide:  result = "\(Double(leftHandValue)! / Double(rightHandValue)!)"
                    
                case .NIL: print("operand not selected")
                }
                
                leftHandValue = result
                if (Double(result)!.truncatingRemainder(dividingBy: 1) == 0) { //if divide by 1 gives no remainder then the result is down cast into an Int
                    
                    result = "\(Int(Double(result)!))"
                }
                displayAreaLabel.text = result
            }
            
            currentOperation = operation
            
        } else {
            
            leftHandValue = runningNumber
            runningNumber = ""
            currentOperation = operation
            
        }
    }
    
    
}

