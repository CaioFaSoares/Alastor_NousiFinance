//
//  CoingeckoAPI.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import Foundation

struct GeckoApi {
    
    static let baseURL: String = "api.coingecko.com/api/v3"
    
    static func getAllCoinsMarketData(currency: String = "usd", ids: String, category: String, order: String = "market_cap_desc", sparkline: Bool = false) async {
        var url = URLComponents(string: GeckoApi.baseURL)!
        
        url.queryItems = [
            URLQueryItem(name: "vs_currency", value: currency),
            URLQueryItem(name: "ids", value: ids)
        ]
        var request = URLRequest(url: url.url!)
        
    }
    
    
}
