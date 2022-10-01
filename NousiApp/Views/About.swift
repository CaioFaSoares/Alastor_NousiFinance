//
//  AboutView.swift
//  NousiApp
//
//  Created by Caio Soares on 22/08/22.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("Developed by COPLaND Art House")
                .font(.title)
            Text("Indexes taken from alternative.me and altcoinseasonindex.com")
                .font(.subheadline)
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
