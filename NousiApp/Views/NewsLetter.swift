//
//  NewsLetter.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct NewsLetter: View {
    var body: some View {
        VStack {
            com_NL_MarketIndicator()
            com_NL_TeamsChoice()
            Spacer()
        }   .navigationBarHidden(false)
            .navigationBarTitle("News Letter")
    }
        
}

struct NewsLetter_Previews: PreviewProvider {
    static var previews: some View {
        NewsLetter()
    }
}
