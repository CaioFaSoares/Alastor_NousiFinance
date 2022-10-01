import Foundation
import SwiftUI

struct LaunchScreen: View {
    
    @State private var isActive = false
    
    @Binding var choices: [TeamChoice]
    @Binding var indexes: [Index]
    @Binding var coins: [Coin]
    @Binding var posts: [BlogPost]
    
    @Binding var video_an: [VideoAndrey]
    @Binding var video_nf: [VideoNF]
    
    var body: some View {
        if isActive{
            ContentView(choices: $choices, indexes: $indexes, coins: $coins, posts: $posts, video_an: $video_an, video_nf: $video_nf)
        } else {
            ZStack{
                Color.green
                
                VStack{
                    
                    
                    Spacer()
                    
                    Image("NousiLogo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    ProgressView(value: 0.75)
                        .progressViewStyle(LinearProgressViewStyle())
                    Spacer()
                    
                    HStack{
                        Text("Developed  by")
                        Text("COPLaND").foregroundColor(Color.blue)
                    }.font(.system(size: 10))
                        .padding(.bottom, 20)
                    
                }
            }.ignoresSafeArea()
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 10.0){
                        self.isActive = true
                    }
                }
                
                
        }
        
        
            
    }
}
