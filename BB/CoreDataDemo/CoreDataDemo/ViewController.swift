//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Vaibhav-VVDN on 12/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // refer  the container
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        //create context from container
        let context = appDelegate.persistentContainer.viewContext
        
        // create  entity and new records
        let entity = NSEntityDescription.entity(forEntityName: "Users", in: context)
        let newUser = NSManagedObject(entity: entity!, insertInto: context)
        
        //add data
        newUser.setValue("Vaibhav" , forKey: "username")
        newUser.setValue("Hello" , forKey: "password")
        newUser.setValue("22" , forKey : "age")
    //save the data in core data
        do
        {
            try context.save()
        }
        catch
        {
            print("failed saving")
        }
        // fetch from core data
        let request  = NSFetchRequest<NSFetchRequestResult>(entityName: "Users")
        request.returnsObjectsAsFaults = false
        do
        {
            let result = try? context.fetch(request)
            for data in result as! [NSManagedObject]
            {
                print(data.value(forKey: "username") as! String)
                print(data.value(forKey: "password") as! String)
                print(data.value(forKey: "age") as! String)
            }
        }
        catch
        {
            print("fetching failed")
        }
        // Do any additional setup after loading the view, typically from a nib.
    }


}

