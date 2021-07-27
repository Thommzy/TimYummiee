//
//  String+Extension.swift
//  TimYummie
//
//  Created by Tim on 14/04/2021.
//

import Foundation

extension String {
    var asUrl: URL? {
        return URL(string: self)
    }
}
