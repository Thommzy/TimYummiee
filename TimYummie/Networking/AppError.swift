//
//  AppError.swift
//  TimYummie
//
//  Created by Tim on 18/05/2021.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Response could not be decoded"
        case .unknownError:
            return "Error is Unknown"
        case .invalidUrl:
            return "Invalid Url"
        case .serverError(let error):
            return error
        }
    }
}
