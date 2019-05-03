//
//  InfoViewController.swift
//  ContactApplication
//
//  Created by Vaibhav-VVDN on 12/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
import CoreData

class InfoViewController: UIViewController,UITextFieldDelegate {
    
    var fnameString:String = ""
    var lnameString:String = ""
    var emailString:String = ""
    var addressString:String = ""
    var phoneString:String = ""

    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var address: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
            self.fname.text = self.fnameString
            self.lname.text = self.lnameString
            self.email.text = self.emailString
            self.address.text = self.addressString
            self.phone.text = self.phoneString
//            print(fnameString)
//        print(lnameString)
//        print(emailString)
//        print(addressString)
//        print(phoneString)
        
            
            self.fname.delegate=self
            self.lname.delegate=self
            self.email.delegate=self
            self.phone.delegate=self

        
      
            }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    }

