//
//  FirstViewController.swift
//  MVVMpoc
//
//  Created by Vaibhav-VVDN on 18/04/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit


class FirstViewController: UIViewController {
    
    
    @IBOutlet weak var CarName: UILabel!
    @IBOutlet weak var CarModel: UILabel!
    @IBOutlet weak var CarAge: UILabel!
    @IBOutlet weak var CarColor: UILabel!
    @IBOutlet weak var CarCompany: UILabel!
    var str1 : String = ""
    @IBOutlet weak var imgView: UIImageView!
    var num:Int = 0
        override func viewDidLoad() {
        super.viewDidLoad()
        if(str1 == "Hello")
        {
            getDzire()
        }
        else 
        {
            getCreta()
        }
    }
    func getDzire()
    {
        num+=1
        let img = UIImage(named: "dzire1")
        let model  =  NewModel(CarName: "Dzire", CarModel: "2018 April", CarPrice: "5lac to 9 lac", CarColor: "Blue ", CarCompany: "Maruti", image: img!)
        let viewmodel = FirstViewModel(obj: model)
        self.CarName.text = viewmodel.CName
        self.CarModel.text = viewmodel.CModel
        self.CarAge.text = viewmodel.CPrice
        self.CarColor.text = viewmodel.CColor
        self.CarCompany.text = viewmodel.CCompany
        self.imgView.image = img
        }
    
    func getCreta()
    {
        num-=1
        let img1 = UIImage(named: "creta3")
        let model1  =  NewModel(CarName: "Creta", CarModel: "2015 December", CarPrice: "9lac - 13lac", CarColor: "Orange", CarCompany: "Hyundai", image: img1!)
        let viewmodel1 = FirstViewModel(obj: model1)
        self.CarName.text = viewmodel1.CName
        self.CarModel.text = viewmodel1.CModel
        self.CarAge.text = viewmodel1.CPrice
        self.CarColor.text = viewmodel1.CColor
        self.CarCompany.text = viewmodel1.CCompany
        self.imgView.image = viewmodel1.image
    }
    
    @IBAction func blueTapped(_ sender: UIButton) {
        if(num == 1)
        {
          self.imgView.image = UIImage(named: "dzire1")
            self.CarColor.text = "Blue"
        }
        else
        {
            self.imgView.image = UIImage(named: "creta3")
            self.CarColor.text = "Blue"
        }
    }
    
    @IBAction func whiteTapped(_ sender: UIButton) {
        if(num == 1)
        {
            self.imgView.image = UIImage(named: "dzire2")
            self.CarColor.text = "White"
        }
        else
        {
            self.imgView.image = UIImage(named: "creta2")
            self.CarColor.text = "White"
        }
    }
    
    @IBAction func darkgreyTapped(_ sender: UIButton) {
        if(num == 1)
        {
            self.imgView.image = UIImage(named: "dzire3")
            self.CarColor.text = "DarkGrey"
        }
        else
        {
            self.imgView.image = UIImage(named: "creta1")
            self.CarColor.text = "DarkGrey"
        }
    }
    @IBAction func silverTapped(_ sender: UIButton) {
        if(num == 1)
        {
            self.imgView.image = UIImage(named: "dzire4")
            self.CarColor.text = "Silver"
        }
        else
        {
            self.imgView.image = UIImage(named: "creta4")
            self.CarColor.text = "Silver"
        }
    }
}
