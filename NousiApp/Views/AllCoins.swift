//
//  allCoins.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import SwiftUI

struct AllCoins: View {
    
    @State private var searchCoin = ""
    @Binding var coins: [Coin]
    
    var body: some View {
        VStack {
            List {
                if !searchedCoins.isEmpty {
                    Section {
                            ForEach (searchedCoins, id: \.id) { coin in
                                HStack {
                                    AsyncImage(url: URL(string: coin.image)!) { image in
                                        image.resizable()
                                    } placeholder: {
                                        ProgressView()
                                    } .frame(width: 20, height: 20)
                                    Text(coin.name)
                                        .fontWeight(.bold)
                                    Spacer()
                                    Text(String(format: "$ %.2f", coin.price))
                                        .font(.system(size: 14))
                                        .fontWeight(.light)
                                        .foregroundColor(Color.gray)
                                    Text("\(com_NL_TeamsChoice.isChoicePositiveIndicator(input: coin.priceChangePercentage24h))\(String(format: "%.2f", coin.priceChangePercentage24h))%")
                                        .font(.system(size: 14))
                                        .fontWeight(.bold)
                                        .foregroundColor(com_NL_TeamsChoice.isChoicePositiveColor(input: coin.priceChangePercentage24h))
                                }
                            }
    //                    com_AC_AllCoinsByMarketCap(coins: $searchedCoins)
                    } header: {
                        Text("Sorted by Market Cap")
                    } footer: {
                        Text("Data sourced from Coingecko")
                    }
                }
            }
            .navigationTitle("All Coins")
            .navigationBarTitleDisplayMode(.large)
            .listStyle(.insetGrouped)
            .searchable(text: $searchCoin, placement: .navigationBarDrawer(displayMode: .always))
            .overlay {
                if searchedCoins.isEmpty {
                    NotFoundList()
                }
            }
        }
    }
    
    var searchedCoins: [Coin] {
        if searchCoin.isEmpty {
            return self.coins
         } else {
            return coins.filter {
                $0.name.contains(searchCoin)
            }
        }
    }
}
