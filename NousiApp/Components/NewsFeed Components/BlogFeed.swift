//
//  BlogFeed.swift
//  NousiApp
//
//  Created by Caio Soares on 24/08/22.
//

import SwiftUI

struct comNFBlogPosts: View {
    
    @Binding var posts: [BlogPost]
    
    var body: some View {
        Section {
            ForEach (posts.prefix(3), id: \.guid ) { post in
                HStack {
//                    AsyncImage(url: URL(string: post.content)!) { image in
//                        image.resizable()
//                    } placeholder: {
//                        ProgressView()
//                    } .frame(width: 20, height: 20)
                    VStack{
                        HStack{
                            Text(post.title)
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                            Spacer()
                            Text(post.pubDate)
                                .font(.system(size: 12))
                                .fontWeight(.light)
                        }
                    }
                }
            }
        }
    }
    
//    static func regexContentLink(postPic: String) async -> String {
//        
//        var postPicChoppedLink: String = postPic
//        let range = NSRange(location: 0, length: postPicChoppedLink.utf16.count)
//        
//        let regex = try! NSRegularExpression(pattern: "/(?:(?:https?|ftp|file):\\/\\/|www\\.|ftp\\.)(?:\\([-A-Z0-9+&@#\\/%=~_|$?!:,.]*\\)|[-A-Z0-9+&@#\\/%=~_|$?!:,.])*(?:\\([-A-Z0-9+&@#\\/%=~_|$?!:,.]*\\)|[A-")
//        
//        return regex.firstMatch(in: postPicChoppedLink, options: [], range: range) != nil
//        
//    }
    
}
