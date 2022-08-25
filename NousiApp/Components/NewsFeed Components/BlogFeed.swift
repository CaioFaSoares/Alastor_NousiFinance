//
//  BlogFeed.swift
//  NousiApp
//
//  Created by Caio Soares on 24/08/22.
//

import SwiftUI
import SwiftSoup

struct comNFBlogPosts: View {
    
    @Binding var posts: [BlogPost]
    
    var body: some View {
        ForEach (posts.prefix(3), id: \.guid ) { post in
            HStack {
                AsyncImage(url: URL(string: extractLinkImageFromContent(content: post.content ?? "invalid" ) ?? "invalid")!) { image in
                    image.resizable()
                } placeholder: {
                    ProgressView()
                } .frame(width: 40, height: 40)
                VStack{
                    HStack (alignment: .top){
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
    
    func extractLinkImageFromContent(content: String) -> String? {
        do {
            print(content)
            let doc: Document = try SwiftSoup.parse(content)
            guard let link: Element = try doc.select("img").first() else {
                return nil
            }
            let src: String =  try link.attr("src")
            print(src)
            return src
        } catch Exception.Error(_, let message) {
            print(message)
        } catch {
            print("error")
        }
        
        return nil
    }
}
