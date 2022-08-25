//
//  com_AC_AllCoinsByMarketCap.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import SwiftUI

struct com_AC_AllCoinsByMarketCap: View {
    
    @Binding var coins: [Coin]
    
    var body: some View {
        Section {
            ForEach (coins, id: \.id) { coin in
                HStack {
                    Text(coin.name)
                }
            }
        }
    }
}
