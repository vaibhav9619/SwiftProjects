//
//  tableViewController.swift
//  loginSignup
//
//  Created by Vaibhav-VVDN on 28/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class tableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var array = [String]()
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=UITableViewCell(style: UITableViewCell.CellStyle.default, reuseIdentifier: "Vaibhav Sadana")
        cell.textLabel?.text=array[indexPath.row]
        return cell
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print("new People\(array)")
        
    }
    

   
}

