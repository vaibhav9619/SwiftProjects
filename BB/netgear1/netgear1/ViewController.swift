//
//  ViewController.swift
//  netgear1
//
//  Created by Vaibhav-VVDN on 19/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
extension UITextField
{
    func setBottom()
    {
        self.borderStyle = .none
        self.layer.backgroundColor=UIColor.white.cgColor
        self.layer.masksToBounds=false
        
        self.layer.shadowColor=UIColor.lightGray.cgColor
        self.layer.shadowOffset=CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity=1.0
        self.layer.shadowRadius=0.0
    }
}


class ViewController: UIViewController,UITextFieldDelegate {



    @IBOutlet weak var butt: UIButton!
    @IBAction func togle(_ sender: UIButton) {
    myText1.isSecureTextEntry.toggle()
        if(sender.isSelected)
        {
            sender.isSelected=false
        }
        else{
            sender.isSelected = true
        }
    }
    
    @IBAction func nextt(_ sender: Any) {
        let objj=self.storyboard?.instantiateViewController(withIdentifier: "finalViewController") as! UIViewController
        self.navigationController?.pushViewController(objj, animated: true)
    }
    @IBOutlet weak var myText: UITextField!
    @IBOutlet weak var myText1: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        butt.clipsToBounds=true
        butt.layer.cornerRadius=butt.frame.height/2
        myText.delegate=self
        myText1.delegate=self
        
//
//        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        self.navigationController?.navigationBar.shadowImage = UIImage()
        
        myText.setBottom()
        myText1.setBottom()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(false, animated: animated)
//    }


}

