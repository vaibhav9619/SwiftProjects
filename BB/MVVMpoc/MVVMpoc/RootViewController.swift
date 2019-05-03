//
//  RootViewController.swift
//  MVVMpoc
//
//  Created by Vaibhav-VVDN on 18/04/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    var str:String = ""
    let ob = FirstViewController()
    @IBAction func DzirebtnTapped(_ sender: UIButton) {
        str = "Hello"
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        obj.str1 = str
        self.navigationController?.pushViewController(obj, animated: true)
 }
    
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view2: UIView!
    
    @IBAction func xuv(_ sender: Any) {
        view2.isHidden = true
        view1.isHidden = true
        view3.isHidden = false
        
    }
    @IBAction func sedans(_ sender: Any) {
        view3.isHidden = true
        view2.isHidden = true
        view1.isHidden = false
    }
    @IBAction func hatchbacks(_ sender: Any) {
        view1.isHidden = true
        view3.isHidden = true
        view2.isHidden = false
    }
    @IBAction func CretaBtnTapped(_ sender: UIButton)
    {
        str = "BByee"
    
        let obj1 = self.storyboard?.instantiateViewController(withIdentifier: "FirstViewController") as! FirstViewController
        obj1.str1 = str
        self.navigationController?.pushViewController(obj1, animated: true)
   
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view1.isHidden = false
        view2.isHidden = true
        view3.isHidden = true
    }


    

}
