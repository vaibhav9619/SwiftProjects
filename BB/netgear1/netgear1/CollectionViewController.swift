//
//  CollectionViewController.swift
//  netgear1
//
//  Created by Vaibhav-VVDN on 22/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    
    let arrimg=[#imageLiteral(resourceName: "router"),#imageLiteral(resourceName: "wifi"),#imageLiteral(resourceName: "wired setting"),#imageLiteral(resourceName: "storage"),#imageLiteral(resourceName: "network.png"),#imageLiteral(resourceName: "location"),#imageLiteral(resourceName: "wired setting")]
//    let arrname:[String]=["Wifi","Router","Config/Firmware","Storage","Location","Network","Wired Setting"]
    
    @IBOutlet weak var collecView: UICollectionView!
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrimg.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell=collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.icon.image=arrimg[indexPath.row]
//        cell.lbl.text=arrname[indexPath.row]
        return cell
    }
    
    
   
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
