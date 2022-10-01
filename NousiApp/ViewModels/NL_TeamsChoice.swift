//
//  NL_TeamsChoice.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct com_NL_TeamsChoice: View {
    
    @State private var choices = [TeamChoice]()
    
    var body: some View {
        List{
            Section {
                ForEach (choices, id: \.id) { choice in
                    VStack {
                        HStack{
                            Text(choice.choice_fullname)
                                .fontWeight(.bold)
                            Spacer()
                        }
                        Text(choice.choice_explanation)
                            .foregroundColor(Color.gray)
                            .frame(alignment: .leading)
                    }
                }
            }   header: {
                   Text("Team's Choices")
               } footer: {
                   Text("This is not a financial advice.")
               }
        }
        
        .listStyle(.insetGrouped)
        
        .task {
            await choices = API_N8N.fetchTeamChoice()
        }
    }
    
}

struct NL_TeamsChoice_Previews: PreviewProvider {
    static var previews: some View {
        com_NL_TeamsChoice()
    }
}
