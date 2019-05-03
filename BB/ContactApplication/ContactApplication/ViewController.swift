//
//  ViewController.swift
//  ContactApplication
//
//  Created by Vaibhav-VVDN on 12/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
import CoreData
var fnameArray=[String]()
var lnameArray=[String]()
var emailArray=[String]()
var addressArray=[String]()
var phoneArray=[String]()
let fname_array = ["Vaibhav","Rahul","Avneet","Manav","Lokesh"]
let lname_array = ["Sadana","Yadav","sharma","ponia","kalra"]
let email_array = ["sadana.vaibhav","rahul.yadav","avneet.shah","manav.ponia","lokesh.kalra"]
let address_array = ["subhash nagar","palika bazar","rajouri garden","gurugram","Noida"]
let phone_array = ["8800338836","9812123454","9876548989","9877665588","9999776633"]



let appDelegate = UIApplication.shared.delegate as! AppDelegate
let context  = appDelegate.persistentContainer.viewContext
let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
let newuser = NSManagedObject(entity: entity!, insertInto: context)




class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    
    @IBOutlet weak var tableview: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        
        // Configure Fetch Request
        fetchRequest.includesPropertyValues = false
        
        do {
            let items = try context.fetch(fetchRequest) as! [NSManagedObject]
            
            for item in items {
                context.delete(item)
            }
            
            // Save Changes
            try context.save()
            
        } catch {
            // Error Handling
            // ...
        }

        let nib = UINib.init(nibName:"TableViewCell" , bundle : nil)
        self.tableview.register(nib, forCellReuseIdentifier: "TableViewCell")
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fname_array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as? TableViewCell
        
        cell?.names.setTitle(fname_array[indexPath.row], for: .normal)
        newuser.setValue(fname_array[indexPath.row], forKey: "fname")
        newuser.setValue(lname_array[indexPath.row], forKey: "lname")
        newuser.setValue(email_array[indexPath.row], forKey: "email")
        newuser.setValue(address_array[indexPath.row], forKey: "address")
        newuser.setValue(phone_array[indexPath.row], forKey: "phone")
        do
        {
            try context.save()
        }
        catch
        {
            print("failed")
        }
        
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do{
            let result = try? context.fetch(request)
            for data in result as! [NSManagedObject]
            {
                 fnameArray.append(data.value(forKey: "fname") as! String)
                lnameArray.append(data.value(forKey: "lname") as! String)
                emailArray.append(data.value(forKey: "email") as! String)
                addressArray.append(data.value(forKey: "address") as! String)
                phoneArray.append(data.value(forKey: "phone") as! String)
            }
        }
        catch
        {
            print("error")
        }
        
        
        return cell!
        
}
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
            
            //           self.showData()
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController

        
        obj.fnameString = fnameArray[indexPath.row]
        obj.lnameString = lnameArray[indexPath.row]
        obj.emailString = emailArray[indexPath.row]
        obj.addressString = addressArray[indexPath.row]
        obj.phoneString = phoneArray[indexPath.row]
                    self.navigationController?.pushViewController(obj, animated: true)

        
        
        
    }
    
    //button on a table view cell

    //            cell?.names.addTarget(self, action: #selector(self.connected), for: .touchUpInside)
    
    /// action of button
//    @objc func connected()
//    {
//
//        DispatchQueue.main.async {
//        let obj = self.storyboard?.instantiateViewController(withIdentifier: "InfoViewController") as! InfoViewController
//        self.navigationController?.pushViewController(obj, animated: true)
////           self.showData()
//
//        }
//    }
    

}

