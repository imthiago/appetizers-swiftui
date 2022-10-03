//
//  Appetizer.swift
//  Appetizers
//
//  Created by Thiago Oliveira on 03/10/22.
//

import Foundation

struct Appetizer: Decodable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}

struct MockData {
    static let appetizer = Appetizer(id: 1,
                                  name: "Test Appetizer",
                                  description: "This is a description for my appetizer",
                                  price: 9.99,
                                  imageURL: "",
                                  calories: 99,
                                  protein: 99,
                                  carbs: 99)
    static let appetizers = [appetizer, appetizer, appetizer, appetizer]
}
