//
//  ViewController2.swift
//  BoozeAlert
//
//  Created by Celina Silva on 02/12/2017.
//  Copyright © 2017 Celina Silva. All rights reserved.
//

import UIKit

class ViewController2 : UIViewController {
  
    @IBOutlet weak var beer4: UITextField!
        
    @IBOutlet weak var beer5: UITextField!
    
    @IBOutlet weak var cider: UITextField!
    
    @IBOutlet weak var wine: UITextField!
    
    @IBOutlet weak var champers: UITextField!
    
    @IBOutlet weak var spirits: UITextField!
    
    @IBOutlet weak var alcopops: UITextField!
    
    @IBOutlet weak var units: UILabel!
    
    
    @IBAction func calcBtnPressed(_ sender: Any) {
        var firstValue = Double(beer4.text!)
        var secondValue = Double(beer5.text!)
        var thirdValue = Double(cider.text!)
        var fourthValue = Double(wine.text!)
        var fifthValue = Double(champers.text!)
        var sixthValue = Double(spirits.text!)
        var seventhValue = Double(alcopops.text!)
        
        
        if firstValue == nil {
             firstValue = Double("0")
        }
        
        if secondValue == nil {
             secondValue = Double("0")
        }
        
        if thirdValue == nil {
             thirdValue = Double("0")
        }
        
        if fourthValue == nil {
             fourthValue = Double("0")
        }
        
        if fifthValue == nil {
             fifthValue = Double("0")
        }
        
        if sixthValue == nil {
             sixthValue = Double("0")
        }
        
        if seventhValue == nil {
             seventhValue = Double("0")
        }
        
        let outputValue = Float((firstValue! * 2.3)  + (secondValue! * 1.6) + (thirdValue! * 2.6) + (fourthValue! * 2.3) + (fifthValue! * 1.5) + (sixthValue! * 1) + (seventhValue! * 1.1))
        
    
    units.text = "\(outputValue)"

}
}
