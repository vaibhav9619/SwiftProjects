//
//  NewViewController.swift
//  ApiParsingGet
//
//  Created by Vaibhav-VVDN on 10/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class NewViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    @IBOutlet weak var tableview: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib.init(nibName:"TableViewCell" , bundle : nil)
        self.tableview.register(nib, forCellReuseIdentifier: "TableViewCell")
    }
    
    
    
    
    var newbook_author = [String]()
    var newbook_name = [String]()
    var newbook_title = [String]()
    var newbook_value = [String]()
    var newbook_category = [String]()
    var newbook_image = [UIImage]()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        var height : Float = 0
        switch(indexPath.section)
        {
        case 0:
            height = 50
        case 1:
            height = 50
        case 2:
            height = 50
        case 3:
            height = 50
        case 4:
            height = 50
        case 5:
            height = 200
        default:
            height = 50
        }
        return CGFloat(height)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let string_cell = "TableViewCell"
        var cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell

        switch(indexPath.section)
        {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell
            cell.label.text = newbook_name[indexPath.row]
            cell.imgview.isHidden = true
            cell.label.isHidden = false
        
        
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell
            cell.label.text = newbook_title[indexPath.row]
            cell.imgview.isHidden = true
            cell.label.isHidden = false
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell
            cell.label.text = newbook_category[indexPath.row]
            cell.imgview.isHidden = true
            cell.label.isHidden = false
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell
            cell.label.text = newbook_author[indexPath.row]
            cell.imgview.isHidden = true
            cell.label.isHidden = false
        case 4:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell
            cell.label.text = newbook_value[indexPath.row]
            cell.imgview.isHidden = true
            cell.label.isHidden = false
        case 5:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell
            cell.imgview.image = newbook_image[indexPath.row]
            cell.label.isHidden = true
            cell.imgview.isHidden = false
            

//
           default:
            cell = tableView.dequeueReusableCell(withIdentifier: string_cell) as! TableViewCell

            cell.label.text = "Other"
            

        }
       return cell
            }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let string_header = "TableViewCell"
        var headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
        switch(section) {
        case 0:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
            headercell.backgroundColor = UIColor.red
            headercell.label.text = "Publisher"
            headercell.label.textColor = UIColor.white
            headercell.imgview.isHidden = true
            headercell.label.font = UIFont.boldSystemFont(ofSize: headercell.label.font.pointSize)

        case 1:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
             headercell.backgroundColor = UIColor.blue
            headercell.label.text = "Title"
             headercell.label.textColor = UIColor.white
            headercell.imgview.isHidden = true
            headercell.label.font = UIFont.boldSystemFont(ofSize: headercell.label.font.pointSize)

        case 2:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
             headercell.backgroundColor = UIColor.orange
            headercell.label.text = "Category"
             headercell.label.textColor = UIColor.white
            headercell.imgview.isHidden = true
            headercell.label.font = UIFont.boldSystemFont(ofSize: headercell.label.font.pointSize)
        case 3:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
            headercell.backgroundColor = UIColor.black
            headercell.label.text = "Author"
            headercell.label.textColor = UIColor.white
            headercell.imgview.isHidden = true
            headercell.label.font = UIFont.boldSystemFont(ofSize: headercell.label.font.pointSize)
            
        case 4:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
            headercell.backgroundColor = UIColor.magenta
            headercell.label.text = "PageCount"
            headercell.label.textColor = UIColor.white
            headercell.imgview.isHidden = true
            headercell.label.font = UIFont.boldSystemFont(ofSize: headercell.label.font.pointSize)
        
        case 5:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
            headercell.backgroundColor = UIColor.orange
            headercell.label.text = "Images"
            headercell.label.textColor = UIColor.white
            headercell.imgview.isHidden = true
            headercell.label.font = UIFont.boldSystemFont(ofSize: headercell.label.font.pointSize)
//
            
            
        

        default:
            headercell = tableView.dequeueReusableCell(withIdentifier: string_header) as! TableViewCell
            headercell.label.text = "None"

        }
        return headercell
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }

    

    
}
