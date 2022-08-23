//
//  CoinModel.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import Foundation


struct Coin: Codable {
    
    var id: String
    var symbol: String
    var name: String
    var price: Double
    var priceChangePercentage: Double
    var high24h: Double
    var low24h: Double
    
    
    enum CodingKeys: String, CodingKey {
        case id, symbol, name
        case price = "current_price"
        case priceChangePercentage = "price_change_percentage_24h"
        case high24h = "high_24h"
        case low24h = "low_24h"
        
    }
    
}
