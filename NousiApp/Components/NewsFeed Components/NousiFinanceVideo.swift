//
//  comNFNousiFinanceVideo.swift
//  NousiApp
//
//  Created by Caio Soares on 25/08/22.
//

import SwiftUI

struct comNFNousiFinanceVideo: View {
    
    @Binding var video_nf: [VideoNF]
    
    var body: some View {
        Section {
            ForEach (video_nf.prefix(3), id: \.guid ) { video_nf in
                    HStack (alignment: .top){
                        Text(video_nf.title)
                            .font(.system(size: 14))
                            .fontWeight(.bold)
                        Spacer()
                        Text(video_nf.pubDate)
                            .font(.system(size: 12))
                            .fontWeight(.light)
                    }
            }
        }
    }
}
