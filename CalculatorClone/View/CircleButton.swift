//
//  CircleButton.swift
//  CalculatorClone
//
//  Created by Rehan Parkar on 2018-02-28.
//  Copyright © 2018 Rehan Parkar. All rights reserved.
//

import UIKit

class CircleButton: UIButton {
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        
        layer.cornerRadius = frame.height / 2
        //layer.pre
        
    }


}
