//
//  DishCategory.swift
//  TimYummie
//
//  Created by Tim on 26/03/2021.
//

import Foundation

struct DishCategory: Codable {
    let id, name, image: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case name = "title"
        case image
    }
}
