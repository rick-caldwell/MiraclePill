//
//  ViewController.swift
//  MiraclePill
//
//  Created by Ricky Caldwell on 5/2/17.
//  Copyright © 2017 Ricky Caldwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    
    
    @IBOutlet weak var countryLabel: UILabel!
    
    
    @IBOutlet weak var zipcodeLabel: UILabel!
    
    
    @IBOutlet weak var countryTextField: UITextField!
    
    
    
    @IBOutlet weak var zipcodeTextField: UITextField!
   
    
    @IBOutlet weak var buyNowBtn: UIButton!
    
    
    @IBOutlet weak var successImage: UIImageView!
    
    
    let states = ["Alaska", "Arkansas", "Alabama", "California", "Maine", "New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
        
        countryLabel.isHidden = true
        
        zipcodeLabel.isHidden = true
        
        countryTextField.isHidden = true
        
        zipcodeTextField.isHidden = true
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        
        statePicker.isHidden = true
        
        
        countryLabel.isHidden = false
        
        zipcodeLabel.isHidden = false
        
        countryTextField.isHidden = false
        
        zipcodeTextField.isHidden = false
        
        
    }
    
    
    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        
        // iterate through all the UIView components 
        // since the UIViewController has a reference
        // to a view components which has subviews
        
        for subview in self.view.subviews {
            // Manipulate the view
            subview.isHidden = true
        }
        
        successImage.isHidden = false
        
        
    }
}

