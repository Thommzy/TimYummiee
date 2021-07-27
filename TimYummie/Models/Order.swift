//
//  Order.swift
//  TimYummie
//
//  Created by Tim on 29/04/2021.
//

import Foundation

struct Order: Codable {
    let id: String?
    let name: String?
    let dish: Dish?
}
