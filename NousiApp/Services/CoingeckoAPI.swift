//
//  CoingeckoAPI.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import Foundation

struct GeckoApi {
    
    static let baseURL: String = "api.coingecko.com/api/v3"
    
    
    static func getAllCoinsMarketData(currency: String = "usd", ids: String = "", category: String = "", order: String = "market_cap_desc", sparkline: Bool = false) async -> [Coin]{
        var url = URLComponents(string: GeckoApi.baseURL + "/coins/markets")!
        url.scheme = "https"
        
        url.queryItems = [
            URLQueryItem(name: "vs_currency", value: currency),
//            URLQueryItem(name: "ids", value: ids),
//            URLQueryItem(name: "category", value: category),
            URLQueryItem(name: "order", value: order),
            URLQueryItem(name: "page", value: "1"),
            URLQueryItem(name: "per_page", value: "20"),
            URLQueryItem(name: "sparkline", value: String(sparkline))
        ]
        
        var request = URLRequest(url: url.url!)
        
        
        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        do {
            let (data, response) = try await URLSession.shared.data(for: request)
            let coins = try decoder.decode([Coin].self, from: data)
            return coins
            
        }catch {
            print(error)
            
        }
        
        
        return []
    }
    
    
}
