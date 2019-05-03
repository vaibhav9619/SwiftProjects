//
//  SignViewController.swift
//  netgear1
//
//  Created by Vaibhav-VVDN on 19/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit


extension UITextField
{
    func setBottom1()
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


class SignViewController: UIViewController {

    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var lname: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var emailCon: UITextField!
    @IBOutlet weak var pass: UITextField!
    @IBOutlet weak var passConf: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
      fname.setBottom1()
        lname.setBottom1()
        email.setBottom1()
        emailCon.setBottom1()
        pass.setBottom1()
        passConf.setBottom1()
        
        // Do any additional setup after loading the view.
    }
    override func viewWillDisappear(_ animated: Bool) {
                super.viewWillDisappear(animated)
                navigationController?.setNavigationBarHidden(true, animated: animated)
            }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
