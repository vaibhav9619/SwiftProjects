//
//  ViewController.swift
//  ImageDownload
//
//  Created by Vaibhav-VVDN on 01/03/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let url = URL(string: "https://yt3.ggpht.com/a-/ACSszfFprNp-1Ay1IhDjH4NenwvLItZpPHeJdewulw=s900-mo-c-c0xffffffff-rj-k-no")
    @IBOutlet weak var modi: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let session = URLSession.shared.dataTask(with: url!) {(data,response,error) in
            if(error != nil)
            {
                print(error!)
            }
            else {
                if (response as? HTTPURLResponse) != nil
                {
                    if let imgdata=data
                    {
                        DispatchQueue.main.async {
                            let image=UIImage(data: imgdata)
                            self.modi.image=image
    
                        }
                    }
                    else {
                        print("File corrupted")
                    }
                }
                    
                    else {
                        print("np response")
                    
                }
            }
            
        // Do any additional setup after loading the view, typically from a nib.
    }

session.resume()
}
}





