//
//  NousiAppApp.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import SwiftUI

@main
struct NousiApp: App {
    
    @State private var choices = [TeamChoice]()
    @State private var indexes = [Index]()
    @State private var coins = [Coin]()
    @State private var posts = [BlogPost]()
    
    @State private var video_an = [VideoAndrey]()
    @State private var video_nf = [VideoNF]()
    
    var body: some Scene {
        WindowGroup {
            LaunchScreen(choices: $choices, indexes: $indexes, coins: $coins, posts: $posts, video_an: $video_an, video_nf: $video_nf)
//            ContentView()
                .task{
                    Task {
                        self.coins = await GeckoAPI.getAllCoinsMarketData()
                    }
                    Task {
                        self.choices = await n8nAPI.fetchTeamChoice()
                    }
                    Task {
                        self.indexes = await n8nAPI.fetchIndexes()
                    }
                    Task {
                        self.posts = await n8nAPI.fetchPosts()
                        self.video_an = await n8nAPI.fetchVideosAN()
                    }
                }
        }
    }
}

