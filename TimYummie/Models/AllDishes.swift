//
//  AllDishes.swift
//  TimYummie
//
//  Created by Tim on 13/07/2021.
//

import Foundation

struct AllDishes: Codable {
    let categories: [DishCategory]?
    let populars: [Dish]?
    let specials: [Dish]?
}
