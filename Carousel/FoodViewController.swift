//
//  ViewController.swift
//  Carousel
//
//  Created by Ashish Mankar on 24/02/18.
//  Copyright © 2018 Ashish Mankar. All rights reserved.
//

import UIKit

class FoodViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    var foods = Food.fetchFood()
    let cellScaling: CGFloat = 0.6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let screenSize = UIScreen.main.bounds.size
        let cellWidth = floor(screenSize.width * cellScaling)
        let cellHeight = floor(screenSize.height * cellScaling)
        
        let insetX = (self.view.bounds.width - cellWidth)/2
        let insetY = (self.view.bounds.height - cellHeight)/2
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.itemSize = CGSize(width: cellWidth, height: cellHeight)
        
        collectionView.contentInset = UIEdgeInsetsMake(insetY, insetX, insetY, insetX)
        
        collectionView.dataSource = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

extension FoodViewController: UICollectionViewDataSource{

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foods.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "FoodCell", for: indexPath) as! FoodCollectionViewCell
        
        cell.food = foods[indexPath.row]
        
        return cell
    }

}

