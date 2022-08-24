//
//  TeamChoiceModel.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import Foundation

struct TeamChoice: Decodable {

    var id: String //bitcoin
    var name: String // Bitcoin
    var commentary: String //Comentário do analista sobre a moeda em questão
    
    var current_price: Double
    var price_change_percentage_24h: Double
    
    var image: String
    
}

//{
//    "id": "bitcoin",
//    "symbol": "btc",
//    "name": "Bitcoin",
//    "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1547033579",
//    "current_price": 21558,
//    "market_cap": 410475157756,
//    "market_cap_rank": 1,
//    "fully_diluted_valuation": 450607836627,
//    "total_volume": 30211936678,
//    "high_24h": 21532,
//    "low_24h": 20955,
//    "price_change_24h": 261.18,
//    "price_change_percentage_24h": 1.22639,
//    "market_cap_change_24h": 4247347651,
//    "market_cap_change_percentage_24h": 1.04556,
//    "circulating_supply": 19129668,
//    "total_supply": 21000000,
//    "max_supply": 21000000,
//    "ath": 69045,
//    "ath_change_percentage": -68.88138,
//    "ath_date": "2021-11-10T14:24:11.849Z",
//    "atl": 67.81,
//    "atl_change_percentage": 31585.73847,
//    "atl_date": "2013-07-06T00:00:00.000Z",
//    "roi": null,
//    "last_updated": "2022-08-23T13:54:08.068Z"
//  },
