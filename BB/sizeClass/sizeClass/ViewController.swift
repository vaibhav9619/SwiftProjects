//
//  ViewController.swift
//  sizeClass
//
//  Created by Vaibhav-VVDN on 16/02/19.
//  Copyright © 2019 VVDN. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    var arrlab=["Vaibhav","Mayank","Ayush","Manav","Mahima","Sam","Avneet"]
    
    
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrlab.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell:CollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.lab.text=arrlab[indexPath.row]
        return cell
    }
    
    
}

