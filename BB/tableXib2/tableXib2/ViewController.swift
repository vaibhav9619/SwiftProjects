//
//  ViewController.swift
//  tableXib2
//
//  Created by Vaibhav-VVDN on 06/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource
{
    let arr = [["one":"ONE","two":"TWO","three":"THREE"],["final":""],["name1":"vaibhav"],["name2":"Hitesh"],["name3":"Akshay"]]
    let arr1 = [["one":"OK","two":"Click","three":"Cancel"],["final":""]]
    
//    let arr1 = ["ONE","TWO","THREE"]
//    let arr2 = [""]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        var a:Int = 0
//        var b:Int = 0
        if(section == 0)
       {
        a=5
        }
        else if(section == 1)
        {
        a=2
        }
        return a
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height : CGFloat = 0.0
        switch(indexPath.section)
        {
        case 0:
            if(indexPath.row == 0)
            {
                height = 50
                
            }
            else if (indexPath.row == 1)
            {
                height = 150
            }
            else if (indexPath.row == 2)
            {
                height = 50
            }
            else if (indexPath.row == 3)
            {
                height = 50
            } else if (indexPath.row == 4)
            {
                height = 50
            }
        case 1:
            if(indexPath.row == 0)
            {
                height = 50
                
            }
            else if (indexPath.row == 1)
            {
                height = 700
            }
        default:
            if(indexPath.row == 0)
            {
                height = 50
                
            }
            else if (indexPath.row == 1)
            {
                height = 100
            }
        }
        
        return height
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
    
        switch(indexPath.section)
        {
        case 0:
            let array=arr[indexPath.row]

            if(indexPath.row == 0)
            {
                //
                cell.one.setTitle(array["one"], for: .normal)
                cell.two.setTitle(array["two"], for: .normal)
                cell.three.setTitle(array["three"], for: .normal)
                cell.label.isHidden=true
                cell.header.isHidden=true
            }
            else if(indexPath.row == 1)
            {
                
                //            cell.label.text=array["final"]
                cell.one.isHidden = true
                cell.two.isHidden = true
                cell.three.isHidden = true
                cell.header.isHidden=true
                
                //            cell.label.te(arr2[indexPath.row])
                cell.label.backgroundColor=UIColor.black
            }
            else if(indexPath.row == 2)
            {
                
                //            cell.label.text=array["final"]
                cell.one.isHidden = true
                cell.two.isHidden = true
                cell.three.isHidden = true
                cell.label.isHidden=true
                
                //            cell.label.te(arr2[indexPath.row])
                cell.header.text = array["name1"]
                cell.header.textColor = UIColor.red
            }
            else if(indexPath.row == 3)
            {
                
                //            cell.label.text=array["final"]
                cell.one.isHidden = true
                cell.two.isHidden = true
                cell.three.isHidden = true
                cell.label.isHidden=true
                
                //            cell.label.te(arr2[indexPath.row])
                cell.header.text = array["name2"]
                cell.header.textColor = UIColor.blue

            }
            else if(indexPath.row == 4)
            {
                
                //            cell.label.text=array["final"]
                cell.one.isHidden = true
                cell.two.isHidden = true
                cell.three.isHidden = true
                cell.label.isHidden=true
                
                //            cell.label.te(arr2[indexPath.row])
                cell.header.text = array["name3"]
                cell.header.textColor = UIColor.orange

            }
            
            
        case 1:
            let array1=arr1[indexPath.row]

            if(indexPath.row == 0)
            {
                //
                cell.one.setTitle(array1["one"], for: .normal)
                cell.two.setTitle(array1["two"], for: .normal)
                cell.three.setTitle(array1["three"], for: .normal)
                cell.label.isHidden=true
                cell.header.isHidden=true
            }
            else if(indexPath.row == 1)
            {
                
                //            cell.label.text=array["final"]
                cell.one.isHidden = true
                cell.two.isHidden = true
                cell.three.isHidden = true
                cell.header.isHidden=true
                
                //            cell.label.te(arr2[indexPath.row])
                cell.label.backgroundColor=UIColor.cyan
            }
            
            
        default:
            cell.one.isHidden = false
            cell.two.isHidden = false
            cell.three.isHidden = false
            cell.header.isHidden=false
            
            cell.label.isHidden=false
//            cell.label.text = "hello"
        }
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerCell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
//        tableView.reu
//    let h=tableView.de?
//        headerCell.header.isHidden = false
//        headerCell.one.isHidden = true
//        headerCell.two.isHidden = true
//        headerCell.three.isHidden = true
//        headerCell.label.isHidden = true
//
        switch(section)
        {
//        case 0:
//
//            headerCell.backgroundColor=UIColor.red
//            headerCell.header.text = "NewView"
//            headerCell.header.backgroundColor=UIColor.red
//            headerCell.one.isHidden=true
//            headerCell.two.isHidden=true
//            headerCell.three.isHidden=true
//            headerCell.label.isHidden=true
//
        case 1:
            headerCell.backgroundColor=UIColor.blue
            headerCell.header.text = "FinalView"
            headerCell.header.textColor=UIColor.orange
            
            headerCell.header.backgroundColor=UIColor.blue
            headerCell.one.isHidden=true
            headerCell.two.isHidden=true
            headerCell.three.isHidden=true
            headerCell.label.isHidden=true
            
            
        default:
//            headerCell.backgroundColor=UIColor.orange
//            headerCell.header.text = "No view"
//            headerCell.header.backgroundCo lor=UIColor.orange
            headerCell.one.isHidden=true
            
            headerCell.two.isHidden=true
            headerCell.three.isHidden=true
            headerCell.label.isHidden=true
            headerCell.header.isHidden=true

            
        }
        
//
        return headerCell
//        let vi=UIView()
        
//        vi.backgroundColor=UIColor.red
//        return vi
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return arr.count
        
    }
//    func tableView(_ tableView: UITableView, estimatedHeightForHeaderInSection section: Int) -> CGFloat {
//        <#code#>
//    }

//


    @IBOutlet weak var tableOutlet: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName: "TableViewCell", bundle: nil)
        
//        let nib1 = UINib.init(nibName: "CustomHeaderCell", bundle: nil)
//        self.tableOutlet.register(nib1, forCellReuseIdentifier: "CustomHeaderCell")

        self.tableOutlet.register(nib, forCellReuseIdentifier: "TableViewCell")
        
        // Do any additional setup after loading the view, typically from a nib.
    }


}

