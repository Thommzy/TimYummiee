//
//  DishLandScapeCollectionViewCell.swift
//  TimYummie
//
//  Created by Tim on 27/04/2021.
//

import UIKit

class DishLandScapeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishLandScapeCollectionViewCell.self)
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var caloriesLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(dish: Dish) {
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        titleLbl.text = dish.name
        descriptionLbl.text = dish.description
        caloriesLbl.text = dish.formattedCalories
    }
    
}
