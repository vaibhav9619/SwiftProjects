//
//  NewAccountViewController.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 22/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class NewAccountViewController: UIViewController, UIPickerViewDelegate,UIPickerViewDataSource{
    let countries = ["Select","India","Austrailia","USA","Japan","China","Sri Lanka"]
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var continueButtonOutlet: UIButton!
    @IBOutlet weak var fName: UITextField!
    @IBOutlet weak var lName: UITextField!
    @IBOutlet weak var emailOutlet: UITextField!
    @IBOutlet weak var confirmEmail: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var confirmPass: UITextField!
    @IBOutlet weak var pickerOutlet: UIPickerView!
    @IBOutlet weak var continueOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
    
    @IBAction func eye1(_ sender: UIButton) {
        
        pass.isSecureTextEntry.toggle()
        if(sender.isSelected){
            sender.isSelected = false
        }
        else{
            sender.isSelected = true
        }
    }
    
    @IBAction func eye2(_ sender: UIButton) {
        
        confirmPass.isSecureTextEntry.toggle()
        if(sender.isSelected){
            sender.isSelected = false
        }
        else{
            sender.isSelected = true
        }
    }
    
    @IBAction func checkBoxAction(_ sender: UIButton) {
        
        if(sender.isSelected){
            sender.isSelected = false
        }
        else{
            sender.isSelected = true
        }
    }
}


extension NewAccountViewController{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    
}
