//
//  ViewController.swift
//  loginSignup
//
//  Created by Vaibhav-VVDN on 27/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit
var nameArray = [String]()


class ViewController: UIViewController,UITextFieldDelegate {
//    var dele:control?
    @IBOutlet weak var text4: UITextField!
    @IBOutlet weak var text3: UITextField!
    @IBOutlet weak var text2: UITextField!
    @IBOutlet weak var text1: UITextField!
    @IBAction func sign(_ sender: Any) {
        postRequest()
//        getRequest()
        
//        var user=Array<ModelViewController>()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        text1.delegate=self
        text2.delegate=self
        text3.delegate=self
        text4.delegate=self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}
extension ViewController
{
    func postRequest()
    {
        guard let url=URL.init(string: "https://reqres.in/api/register") else {
            return
        }
        let parameter=["email":text4?.text,"password":text3?.text] as Any
//        print(parameter["email"]!! as Any)
//        print(parameter["password"]!! as Any)
        guard let data = try? JSONSerialization.data(withJSONObject: parameter, options:[]) else {
            return
        }
        var urlreq=URLRequest.init(url: url)
        urlreq.httpMethod="POST"
        urlreq.httpBody=data
        urlreq.timeoutInterval=60
        urlreq.addValue("application/json", forHTTPHeaderField: "Content-Type")
        let session=URLSession.shared
        session.dataTask(with: urlreq) {(data,response,error) in
            print("response\(response!)")
            guard let server = data else
            {
                return
            }
            guard let serial = try? JSONSerialization.jsonObject(with: server, options: []) else
            {
                return
            }
            print("serial\(serial)")
            self.getRequest()
            

        }.resume()

    }
    
    
    
    func getRequest()
    {
        
//        var nameArray = [String]()
        
        let url1=URL(string: "as ")
        let task=URLSession.shared.dataTask(with: url1!) {(data,response,error) in
            if error != nil
            {
               print(error!)
            }
            else
            if let urldata=data
            {
                do
                {
                    let jsonFile = try JSONSerialization.jsonObject(with: urldata, options: JSONSerialization.ReadingOptions.mutableContainers)
                    print(jsonFile)
//
                    // get json
                  guard let jsonResponse = jsonFile as? [String:Any] else {return}
                    
                    guard let responseArray = jsonResponse["data"] as? [AnyObject] else {return}

                    for dict in responseArray {
                        guard let name=dict["first_name"] as? String  else {return}
                        
                        // Add name in Array
                        nameArray.append(name)
                        
                        // print name
                        print(name)
                                           }
                    
                    // move to next view controller
//                    let tableViewControllerObj = tableViewController()
                    
                    
                    DispatchQueue.main.async {
                        
                        let tableViewControllerObj = self.storyboard?.instantiateViewController(withIdentifier: "tableViewController") as! tableViewController
                        
                        tableViewControllerObj.array = nameArray
                        self.navigationController?.pushViewController(tableViewControllerObj, animated: true)
                        
                    }
                    
                    
                    
                    // send data to next view controller
                    
                    }
                catch
                {
                    print("invalid page")
                }
            }
        }.resume()
        //calling methods
       
    }
    
    
}

