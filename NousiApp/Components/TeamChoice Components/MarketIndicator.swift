//
//  MarketIndicator.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import Foundation
import SwiftUI

struct com_NL_MarketIndicator: View {
    
    @Binding var indexes: [Index]
    
    var body: some View {
        Section {
            ForEach (indexes, id: \.id )  { index in
                HStack {
                    Text(index.index_full_name)
                        .fontWeight(.bold)
                    Spacer()
                    Text("\(index.index_value)%")
                        .fontWeight(.bold)
                        .foregroundColor(com_NL_MarketIndicator.index_value_color(index_value: index.index_value))
                }
            }
        }
        
    }
    
    static func index_value_color(index_value: String) -> Color {
        
        let makeValueIntoInt = Int(index_value)!
        
        if makeValueIntoInt >= 50 {
            return Color.green
        }
        if makeValueIntoInt < 50 && makeValueIntoInt >= 30 {
            return Color.orange
        } else {
            return Color.red
        }
        
    }
    
}
