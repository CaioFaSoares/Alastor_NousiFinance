//
//  ContentView.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import SwiftUI

//Testing the dev branch setup... again... you know what? Fuck this. Fuck dev branching.
//Guess we are dev branching after all.

struct ContentView: View {
    
    @State private var choices = [TeamChoice]()
    @State private var indexes = [Index]()
    @State private var coins = [Coin]()
    
    var body: some View {
        TabView() {
            
            //Read on Swift documentation that we aren't supposed to put TabViews inside of NavigationViews. That's why the refactoring
            
            NavigationView{
                DailyView(indexes: $indexes, choices: $choices)
                    
            }.tabItem {
                Label("Daily View", systemImage: "calendar.day.timeline.leading")
            }
            
            NavigationView{
                AllCoins(coins: $coins)
                    
            }.tabItem {
                Label("All Coins", systemImage: "bitcoinsign.circle")
            }
            
            NavigationView{
                NewsFeed()
            }.tabItem {
                Label("News Feed", systemImage: "newspaper")
            }
            
        }
 
        .task{
            Task {
                self.coins = await GeckoAPI.getAllCoinsMarketData()
            }
            Task {
                self.indexes = await n8nAPI.fetchIndexes()
            }
            Task {
                self.choices = await n8nAPI.fetchTeamChoice()
            }
                            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
