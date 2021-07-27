//
//  Dish.swift
//  TimYummie
//
//  Created by Tim on 27/04/2021.
//

import Foundation

struct Dish: Codable {
    let id, name, description, image: String?
    let calories: Int?
    
    var formattedCalories: String {
        return "\(calories ?? 0) calories"
    } 
}
