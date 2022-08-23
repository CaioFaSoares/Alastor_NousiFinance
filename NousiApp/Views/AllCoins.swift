//
//  allCoins.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import SwiftUI

struct AllCoins: View {
    
    @Binding var coins: [Coin]
    
    var body: some View {
        VStack {
            List {
                Section {
                    com_AC_AllCoinsByMarketCap(coins: $coins)
                } header: {
                    Text("Sorted by Market Cap")
                } footer: {
                    Text("Data sourced from Coingecko")
                }
            }
            .navigationTitle("All Coins")
            .listStyle(.insetGrouped)
        }
    }
}
