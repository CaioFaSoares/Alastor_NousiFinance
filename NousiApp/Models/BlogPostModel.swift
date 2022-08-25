//
//  BlogPostModel.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import Foundation

struct BlogPost: Decodable {
    
    let creator: String
    let title: String
    let link: String
    let pubDate: String
    let content: String?
    let contentSnippet: String?
    let guid: String
    let isoDate: String
    
}

/*
 {
         "creator": "Ryan Melo",
         "title": "As principais ferramentas para o mercado de DeFi",
         "link": "https://www.nousi.finance/as-principais-ferramentas-para-o-mercado-de-defi/",
         "pubDate": "Fri, 19 Aug 2022 11:00:00 GMT",
         "dc:creator": "Ryan Melo",
         "content": "<div><img src=\"https://www.nousi.finance/wp-content/uploads/2022/08/Veja-ferramentas-essenciais-para-operar-criptomoedas.png\" style=\"width: 100%;\" /></div>",
         "contentSnippet": "",
         "guid": "f4aac4268e39c2e9569b45b155201033",
         "isoDate": "2022-08-19T11:00:00.000Z"
     },
 */
