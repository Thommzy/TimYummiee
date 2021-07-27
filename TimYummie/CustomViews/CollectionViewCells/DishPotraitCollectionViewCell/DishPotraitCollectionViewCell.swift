//
//  DishPotraitCollectionViewCell.swift
//  TimYummie
//
//  Created by Tim on 27/04/2021.
//

import UIKit

class DishPotraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishPotraitCollectionViewCell.self)

    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var caloriesLbl: UILabel!
    @IBOutlet weak var descriptionLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(dish: Dish) {
        titleLbl.text = dish.name
        dishImageView.kf.setImage(with: dish.image?.asUrl)
        caloriesLbl.text = dish.formattedCalories
        descriptionLbl.text = dish.description
    }
    
}
