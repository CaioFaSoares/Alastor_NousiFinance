//
//  NewsFeed.swift
//  NousiApp
//
//  Created by Caio Soares on 23/08/22.
//

import SwiftUI

struct NewsFeed: View {
    
    @Binding var posts: [BlogPost]
    @Binding var video_an: [VideoAndrey]
    @Binding var video_nf: [VideoNF]
    
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
                    Text("Posts do Blog")
                }
                Section {
                    comNFAndreyVideo(video_an: $video_an)
                } header: {
                    Text("Youtube do Andrey")
                }
//                Section {
//                    comNFNousiFinanceVideo(video_nf: $video_nf)
//                } header: {
//                    Text("Youtube da NousiFinance")
//                }
//                .listStyle(.grouped)
        }.navigationTitle("Notícias")
        Spacer()
        }
    }
}
