//
//  NewsLetter.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct DailyView: View {
    
    @Binding var indexes: [Index]
    @Binding var choices: [TeamChoice]
    
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
            .navigationTitle("Daily View")
            .listStyle(.insetGrouped)
        }
    }
    
}
