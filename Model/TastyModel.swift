//
//  TastyModel.swift
//  Tasty
//
//  Created by Anastasia Lenina on 11.07.2023.
//

import Foundation

struct TastyModel: Codable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}
struct TastyResponse: Codable {
    let request: [TastyModel]
}
struct MockupData {
    static let sampleTasty = TastyModel(id: 0001,
                                        name: "Test Name",
                                        description: "Test Description",
                                        price: 22.2,
                                        imageURL: "",
                                        calories: 14,
                                        protein: 15,
                                        carbs: 99)
    static var tastyArray = [sampleTastyOne, sampleTastyTwo, sampleTastyThree]
    static let sampleTastyOne = TastyModel(id: 0001,
                                        name: "Test Name",
                                        description: "Test Description",
                                        price: 22.2,
                                        imageURL: "",
                                        calories: 14,
                                        protein: 15,
                                        carbs: 99)
    static let sampleTastyTwo = TastyModel(id: 0002,
                                        name: "Test Name",
                                        description: "Test Description",
                                        price: 22.2,
                                        imageURL: "",
                                        calories: 14,
                                        protein: 15,
                                        carbs: 99)
    static let sampleTastyThree = TastyModel(id: 0003,
                                        name: "Test Name",
                                        description: "Test Description",
                                        price: 22.2,
                                        imageURL: "",
                                        calories: 14,
                                        protein: 15,
                                        carbs: 99)
}
