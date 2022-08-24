//
//  BlogPostModel.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import Foundation

struct BlogPost: Decodable {
    
    let id: String
    let creator: String
    let title: String
    let link: String
    let pubDate: String
    let content: String
    let contentSnippet: String
    let isoDate: String
    
    enum CodingKeys: String, CodingKey {
        case creator, title, link, pubDate, content, contentSnippet, isoDate
        case id = "guid"
    }
    
}

/*
 {
 "creator": "Ryan Melo",
 "title": "As principais ferramentas para o mercado de DeFi",
 "link": "https://www.nousi.finance/as-principais-ferramentas-para-o-mercado-de-defi/",
 "pubDate": "Fri, 19 Aug 2022 11:00:00 GMT",
 "dc:creator": "Ryan Melo",
 "content": "<div><img width="150" height="150" src="https://www.nousi.finance/wp-content/uploads/2022/08/Veja-ferramentas-essenciais-para-operar-criptomoedas-150x150.png" class="attachment-thumbnail size-thumbnail wp-post-image" alt="" />1. DeFi LlAMA DeFi Llama é um site de análise DeFi (finanças descentralizadas) que rastreia os dados das redes como Ethereum, Terra, Avalanche, Fantom, Polkadot e outras redes. O site agrega dados de mais de 80 blockchains e centenas de aplicativos  descentralizados. Com isso podemos ver quais cadeias são as maiores e como o mercado […]</div>",
 "contentSnippet": "1. DeFi LlAMA DeFi Llama é um site de análise DeFi (finanças descentralizadas) que rastreia os dados das redes como Ethereum, Terra, Avalanche, Fantom, Polkadot e outras redes. O site agrega dados de mais de 80 blockchains e centenas de aplicativos  descentralizados. Com isso podemos ver quais cadeias são as maiores e como o mercado […]",
 "guid": "f4aac4268e39c2e9569b45b155201033",
 "isoDate": "2022-08-19T11:00:00.000Z"
 },
 */
