//
//  ContentView.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import SwiftUI

//Testing the dev branch setup... again... you know what? Fuck this. Fuck dev branching.
//Guess we are dev branching after all.

//quem faz o palhaço rir

struct ContentView: View {
    
    @Binding var choices: [TeamChoice]
    @Binding var indexes: [Index]
    @Binding var coins: [Coin]
    @Binding var posts: [BlogPost]
    
    @Binding var video_an: [VideoAndrey]
    @Binding var video_nf: [VideoNF]
    
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
 
    }
    
}
