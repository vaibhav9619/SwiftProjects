//
//  LoginViewController.swift
//  Assignment Netgear
//
//  Created by Hridayedeep Gupta on 21/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var LoginNavBar: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
}
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(false, animated : animated)
    }
}
