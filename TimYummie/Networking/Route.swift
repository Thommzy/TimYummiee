//
//  Route.swift
//  TimYummie
//
//  Created by Tim on 18/05/2021.
//

import Foundation

enum Route {
    static let baseUrl  = "https://yummie.glitch.me"
    
    case fetchAllCategories
    
    var description: String {
        switch self {
        case .fetchAllCategories: return "/dish-categories"
        }
    }
}
