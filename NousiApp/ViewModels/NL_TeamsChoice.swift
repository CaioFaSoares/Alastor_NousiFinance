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
                    Text(choice.choice_fullname)
                        .fontWeight(.bold)
                    Text(choice.choice_explanation)
                        .foregroundColor(Color.gray)
                        .frame(alignment: .leading)
                }
            }
    }
    
}


