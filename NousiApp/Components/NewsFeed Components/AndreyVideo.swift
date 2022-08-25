//
//  comNFAndreyVideo.swift
//  NousiApp
//
//  Created by Caio Soares on 25/08/22.
//

import SwiftUI

struct comNFAndreyVideo: View {
    
    @Binding var video_an: [VideoAndrey]
    
    var body: some View {
        ForEach (video_an.prefix(3), id: \.guid ) { video_an in
            HStack {
                Text(video_an.title)
                    .font(.system(size: 14))
                    .fontWeight(.bold)
                Spacer()
                Text(video_an.pubDate)
                    .font(.system(size: 12))
                    .fontWeight(.light)
            }
        }
    }
}
