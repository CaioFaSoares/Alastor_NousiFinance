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
                    Text("Indicadores de Mercado")
                } footer: {
                    Text("Fontes na página de sobre.")
                }
                
                Section {
                    com_NL_TeamsChoice(choices: $choices)
                } header: {
                    Text("Escolhas da equipe Nousi")
                } footer: {
                    Text("Isso não é uma dica financeira")
                }
            }
            .navigationTitle("Visão Diária")
            .listStyle(.grouped)
        }
    }
    
}
