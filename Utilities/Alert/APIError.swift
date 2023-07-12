//
//  APIError.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import Foundation
enum APIError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
    case unableToComplete
}
