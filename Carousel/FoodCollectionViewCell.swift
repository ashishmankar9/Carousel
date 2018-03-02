//
//  FoodCollectionViewCell.swift
//  Carousel
//
//  Created by Ashish Mankar on 24/02/18.
//  Copyright © 2018 Ashish Mankar. All rights reserved.
//

import UIKit

class FoodCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var featuredImageView: UIImageView!
    @IBOutlet weak var foodTitleLabel: UILabel!
    @IBOutlet weak var foodBackgroundColorView: UIView!
    
    var food: Food?{
        
        didSet{
            self.updateUI()
        }
        
    }
    
    private func updateUI(){
        
        if let food = food {
            
            featuredImageView.image = food.featuredImage
            foodTitleLabel.text = food.title
            foodBackgroundColorView.backgroundColor = food.color
            
            
        } else {
            
            featuredImageView.image = nil
            foodTitleLabel.text = nil
            foodBackgroundColorView.backgroundColor = nil
            
        }
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.layer.cornerRadius = 3.0
        layer.shadowRadius = 10
        layer.shadowOpacity = 0.4
        layer.shadowOffset = CGSize(width: 5, height: 10)
        
        
        
        self.clipsToBounds = false
        
    }
    
}
