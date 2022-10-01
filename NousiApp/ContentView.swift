//
//  ContentView.swift
//  NousiApp
//
//  Created by Caio Soares on 19/08/22.
//

import SwiftUI

//Testing the dev branch setup... again... you know what? Fuck this. Fuck dev branching.

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView() {
                NewsLetter()

            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
