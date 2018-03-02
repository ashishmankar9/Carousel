//
//  Food.swift
//  Carousel
//
//  Created by Ashish Mankar on 24/02/18.
//  Copyright © 2018 Ashish Mankar. All rights reserved.
//

import UIKit

class Food{
    
    var title = ""
    var featuredImage: UIImage
    var color: UIColor
    
    init(title: String, featuredImage: UIImage, color: UIColor) {
        
        self.title = title
        self.featuredImage = featuredImage
        self.color = color
        
    }
    
    static func fetchFood() -> [Food]{
        
        return [
        
            Food(title: "Food 1", featuredImage: UIImage(named: "food1")! , color: UIColor.blue.withAlphaComponent(0.2)),
            Food(title: "Food 2", featuredImage: UIImage(named: "food2")! , color: UIColor.black.withAlphaComponent(0.2)),
            Food(title: "Food 3", featuredImage: UIImage(named: "food3")! , color: UIColor.red.withAlphaComponent(0.2)),
            Food(title: "Food 4", featuredImage: UIImage(named: "food4")! , color: UIColor.orange.withAlphaComponent(0.2)),
            Food(title: "Food 5", featuredImage: UIImage(named: "food5")! , color: UIColor.gray.withAlphaComponent(0.2)),
            Food(title: "Food 6", featuredImage: UIImage(named: "food6")! , color: UIColor.brown.withAlphaComponent(0.2)),
            Food(title: "Food 7", featuredImage: UIImage(named: "food8")! , color: UIColor.darkGray.withAlphaComponent(0.2))
            
        ];
        
    }
    
}
