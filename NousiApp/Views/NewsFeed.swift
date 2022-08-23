//
//  NewsFeed.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import SwiftUI

struct NewsFeed: View {
    var body: some View {
        VStack{
            Text("Hello World")
        }
        .navigationTitle("News Feed")
        .listStyle(.insetGrouped)
    }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}
