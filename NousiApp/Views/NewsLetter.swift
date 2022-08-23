//
//  NewsLetter.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct NewsLetter: View {
    
    @State private var choices = [TeamChoice]()
    @State private var indexes = [Index]()
    
    var body: some View {
        VStack {
            List {
                Section {
                    com_NL_MarketIndicator(indexes: $indexes)
                } header: {
                    Text("Market Indicators")
                } footer: {
                    Text("Data source on the about page.")
                }
                
                Section {
                    com_NL_TeamsChoice(choices: $choices)
                } header: {
                    Text("Team's Choices")
                } footer: {
                    Text("This is not a financial advice.")
                }
            }
            .task {
                await choices = API_N8N.fetchTeamChoice()
                await indexes = API_N8N.fetchIndexes()
            }
            .listStyle(.insetGrouped)
        }
        .navigationBarHidden(false)
        .navigationBarTitle("News Letter")
    }
    
}

struct NewsLetter_Previews: PreviewProvider {
    static var previews: some View {
        NewsLetter()
    }
}
