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
        //        List{
//        Section {
            ForEach (choices, id: \.id) { choice in
                VStack {
                    HStack{
                        Text(choice.choice_fullname)
                            .fontWeight(.bold)
                        //                            Spacer()
                    }
                    Text(choice.choice_explanation)
                        .foregroundColor(Color.gray)
                        .frame(alignment: .leading)
                }
            }
    }
    
}


