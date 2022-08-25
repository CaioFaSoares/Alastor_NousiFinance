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
    @State private var posts = [BlogPost]()
    
    @State private var video_an = [VideoAndrey]()
    @State private var video_nf = [VideoNF]()
    
    var body: some View {
        TabView() {
            
            //Read on Swift documentation that we aren't supposed to put TabViews inside of NavigationViews. That's why the refactoring
            
            NavigationView{
                DailyView(indexes: $indexes, choices: $choices)
                    
            }.tabItem {
                Label("Visão Diária", systemImage: "calendar.day.timeline.leading")
            }
            
            NavigationView{
                AllCoins(coins: $coins)
                    
            }.tabItem {
                Label("Top 20 Moedas", systemImage: "bitcoinsign.circle")
            }
            
            NavigationView{
                NewsFeed(posts: $posts, video_an: $video_an, video_nf: $video_nf)
            }.tabItem {
                Label("Notícias", systemImage: "newspaper")
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
            Task {
                self.posts = await n8nAPI.fetchPosts()
                self.video_an = await n8nAPI.fetchVideosAN()
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
