//
//  ViewController.swift
//  BoozeAlert
//
//  Created by Celina Silva on 02/12/2017.
//  Copyright © 2017 Celina Silva. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return list.count
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return 0
    }
    
    @IBOutlet var GenderBox: UITextField!
    @IBOutlet var GenderOptions: UIPickerView!
    
    public var list = ["Female","Male"]
    
    @IBOutlet var Weight: UITextField!
    @IBOutlet var Height: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView:UIPickerView) -> Int{
            return 1
    }
    func PickerView(pickerView:UIPickerView,numberOfRownsInComponents component :Int)-> Int{
        return list.count
    }
    func PickerView(pickerView:UIPickerView,titleForRow row: Int, forComponent component: Int)->String!{
        self.view.endEditing(true)
        return list[row]
    }
    func PickerView(pickerView:UIPickerView, didSelectRow row: Int,  inComponent component: Int) {
        
        self.GenderBox.text = self.list[row]
        self.GenderOptions.isHidden = true
        
    }
    func textFieldDidBeginEditing (textField: UITextField){
        if textField == self.GenderBox{
            self.GenderOptions.isHidden = false
            
        }
        
    }
}

