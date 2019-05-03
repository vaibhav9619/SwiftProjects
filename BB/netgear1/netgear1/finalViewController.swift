//
//  finalViewController.swift
//  netgear1
//
//  Created by Vaibhav-VVDN on 20/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class finalViewController: UIViewController,UITextFieldDelegate
{
    var activeTextField = UITextField()

    
    @IBAction func next1(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var text1: UITextField!
    
    @IBAction func toglee1(_ sender: UIButton) {
        text5.isSecureTextEntry.toggle()
        if(sender.isSelected)
        {
            sender.isSelected=false
        }
        else
        {
            sender.isSelected=true
        }
    }
    
    @IBAction func toggle2(_ sender: UIButton) {
        text6.isSecureTextEntry.toggle()
        if(sender.isSelected)
        {
            sender.isSelected=false
        }
        else
        {
            sender.isSelected=true
        }
    }
    @IBOutlet weak var butt2: UIButton!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text5: UITextField!
    @IBOutlet weak var text6: UITextField!
    //    @IBOutlet weak var textF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        butt2.clipsToBounds=true
        butt2.layer.cornerRadius=butt2.frame.height/3
        text1.setBottom5()
        text2.setBottom5()
        text3.setBottom5()
        text4.setBottom5()
        text5.setBottom5()
        text6.setBottom5()
//        textF.delegate=self
        self.hideKeyboardTappedAround()


        //TODO:keyboard
    
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.keyboardDidShow(notification:)),
            name: UIResponder.keyboardWillShowNotification, object: nil)
    
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(self.keyboardWillHide(notification:)),
            name: UIResponder.keyboardWillHideNotification, object: nil)
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    @objc func keyboardDidShow(notification: Notification) {
        
        let info:NSDictionary=notification.userInfo! as NSDictionary
        let keyboardSize=(info[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        let keyboardY=self.view.frame.size.height - keyboardSize.height
        let editingTextFieldY:CGFloat! = self.activeTextField.frame.origin.y
        if editingTextFieldY > keyboardY-60
        {
            UIView.animate(withDuration: 0.25, animations: {
                self.view.frame=CGRect(x:0,y:self.view.frame.origin.y - (editingTextFieldY! - (keyboardY - 60)),width:self.view.bounds.width,height:self.view.bounds.height)
            }, completion:nil)
        }
    }
    @objc func keyboardWillHide(notification: NSNotification) {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.frame=CGRect(x:0,y:0,width:self.view.bounds.width,height:self.view.bounds.height)
        }, completion:nil)
    }
 //********************************************************************************************************
    //close on tap
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activeTextField = textField;
    }
    
   
}


extension UIViewController
{
    func hideKeyboardTappedAround()
    {
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView=false
        view.addGestureRecognizer(tap)
    }
    @objc func dismissKeyboard()
    {
        view.endEditing(true)
    }
}

extension UITextField
{
    func setBottom5()
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
