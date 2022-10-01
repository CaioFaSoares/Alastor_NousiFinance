//
//  IndexModel.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import Foundation

struct Index: Decodable {
    
    let index_full_name: String
    let index_short_name: String
    let index_value: String
    
    let id: Int
    
}

//"index_full_name": "Altcoin Season Index",
//"index_short_name": "asi",
//"value": "76"
