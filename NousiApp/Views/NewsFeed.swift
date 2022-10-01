//
//  NewsFeed.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import SwiftUI

struct NewsFeed: View {
    
    @Binding var posts: [BlogPost]
    
    @State private var isBlogExpanded: Bool = false
    
    var body: some View {
        VStack{
//           DisclosureGroup("Testando", isExpanded: $isBlogExpanded) {
//                List {
//                    Section {
//                        comNFBlogPosts(posts: $posts)
//                    } header: {
//                        Text("Blog Posts")
//                    }
//                }.listStyle(.grouped)
//            }.frame(width: 350)
            List {
                Section {
                    comNFBlogPosts(posts: $posts)
                } header: {
                    Text("Blog Posts")
                }
            }.listStyle(.grouped)
            Spacer()
        }.navigationTitle("News Feed")
    }
}
