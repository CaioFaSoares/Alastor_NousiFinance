//
//  NL_TeamsChoice.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct com_NL_TeamsChoice: View {
    
    @Binding var choices: [TeamChoice]
    
    var body: some View {
        ForEach (choices, id: \.id) { choice in
            VStack (alignment: .leading) {
                HStack {
                    AsyncImage(url: URL(string: choice.image)!) { image in
                        image.resizable()
                    } placeholder: {
                        ProgressView()
                    } .frame(width: 20, height: 20)
                    Text(choice.name)
                        .fontWeight(.bold)
                    Spacer()
                    Text(String(format: "$ %.2f", choice.current_price))
                        .font(.system(size: 14))
                        .fontWeight(.light)
                        .foregroundColor(Color.gray)
                    Text("\(com_NL_TeamsChoice.isChoicePositiveIndicator(input: choice.price_change_percentage_24h))\(String(format: "%.2f", choice.price_change_percentage_24h))%")
                        .font(.system(size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(com_NL_TeamsChoice.isChoicePositiveColor(input: choice.price_change_percentage_24h))
                }
                Text(choice.commentary)
                    .font(.system(size: 12))
                    .foregroundColor(Color.gray)
                    .frame(height: 30, alignment: .topLeading)
            }
            
        }
        
    }
    
    static func isChoicePositiveIndicator(input: Double) -> String {
        
        if input >= 0 {
            return "+"
        } else {
            return ""
        }
        
    }
    
    static func isChoicePositiveColor(input: Double) -> Color {
        
        if input >= 0 {
            return Color.green
        } else {
            return Color.red
        }
        
    }
    
}
