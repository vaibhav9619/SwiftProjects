//
//  ViewController.swift
//  FacebookIntegration
//
//  Created by Vaibhav-VVDN on 24/04/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class ViewController: UIViewController {

    @IBOutlet weak var id: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var lastname: UITextField!
    @IBOutlet weak var firstname: UITextField!
    @IBAction func facebook(_ sender: UIButton) {
        let fbloginManager:FBSDKLoginManager = FBSDKLoginManager()
        fbloginManager.logIn(withReadPermissions: ["email"], from: self) {(result,error) in
            if(error==nil)
            {
                let fbLoginresult:FBSDKLoginManagerLoginResult = result!
                if(fbLoginresult.grantedPermissions != nil)
                {
                    if(fbLoginresult.grantedPermissions.contains("email"))
                    {
                        self.GetUserData()
                        fbloginManager.logOut()
                    }
                }
            }
        }

    }
    func loginBtnTapped(_ loginButton: FBSDKLoginButton)
    {
        print("user logout")
    }
    func GetUserData()  {
        if(FBSDKAccessToken.current() !=  nil)
        {
            FBSDKGraphRequest(graphPath: "me", parameters: ["fields": "id,name,first_name,last_name,email"])?.start(completionHandler: {(connection,result,error) -> Void in
                if(error == nil)
                {
                    let facebooDic = result as! [String:AnyObject]
                    print(facebooDic)
                    let email = facebooDic["email"] as! String
                    self.email.text = email
                    let id = facebooDic["id"] as! String
                    self.id.text = id
                    let first = facebooDic["first_name"] as! String
                    self.firstname.text=first
                    let last = facebooDic["last_name"] as! String
                    self.lastname.text=last
                }
                
            })
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

}

