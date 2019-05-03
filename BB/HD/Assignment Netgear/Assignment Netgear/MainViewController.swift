//
//  ViewController.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 20/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PassOutlet: UITextField!
    @IBOutlet weak var LoginOutlet: UIButton!
    @IBAction func eyePass(_ sender: UIButton) {
   
        PassOutlet.isSecureTextEntry.toggle()
        if(sender.isSelected){
            sender.isSelected = false
        }
        else{
            sender.isSelected = true
        }
    }
 
    override func viewDidLoad() {
        super.viewDidLoad()
        LoginOutlet.layer.cornerRadius = 5
        LoginOutlet.layer.borderWidth = 1
        LoginOutlet.layer.borderColor = UIColor.blue.cgColor
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
}

