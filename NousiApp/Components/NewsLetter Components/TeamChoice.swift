//
//  NL_TeamsChoice.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct com_NL_TeamsChoice: View {
    
    @Binding var choices: [TeamChoice]
    @Binding var coins: [Coin]
    
    var body: some View {
        ForEach (choices, id: \.id) { choice in
            VStack (alignment: .leading) {
                HStack {
                    Text(choice.name)
                        .fontWeight(.bold)
                    Spacer()
                    Text("$ 22K")
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    Text("+12%")
                        .fontWeight(.bold)
                        .foregroundColor(Color.green)
                }
                Text(choice.commentary)
                    .foregroundColor(Color.gray)
                    .frame(alignment: .leading)
            }
            
        }
        
    }
    
}
