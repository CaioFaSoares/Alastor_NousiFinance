//
//  VideoNF.swift
//  NousiApp
//
//  Created by Caio Soares on 25/08/22.
//

import Foundation

struct VideoNF: Decodable {
    
    let creator: String
    let title: String
    let link: String
    let pubDate: String
    let contentSnippet: String?
    let guid: String
    let isoDate: String
    
}
