//
//  GroceryResult.swift
//  GreenGocery
//
//  Created by Supanut Laddayam on 21/5/2563 BE.
//  Copyright © 2563 Supanut LDM. All rights reserved.
//

import Foundation

struct GroceryResult: Codable {
    let groceries: [Grocery]
}

struct Grocery: Codable {
    let skuID: String
    let title: String
    let image: String
    let details: String
    let price: Double
    
    enum CodingKeys: String, CodingKey {
        case skuID = "sku-id"
        case title
        case image = "product_image"
        case details
        case price
    }
}
