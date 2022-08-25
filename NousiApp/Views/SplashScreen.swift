import Foundation
import SwiftUI

struct LaunchScreen: View {
    
    @State private var isActive = false
    
    var body: some View {
        if isActive{
            ContentView()
        } else {
            ZStack{
                Color.green
                
                VStack{
                    
                    
                    Spacer()
                    
                    Image("NousiLogo")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    ProgressView(value: 0.75)
                        .progressViewStyle(CircularProgressViewStyle())
                    Spacer()
                    
                    HStack{
                        Text("Developed by")
                        Text("Copland").foregroundColor(Color.blue)
                    }.font(.system(size: 10))
                        .padding(.bottom, 20)
                    
                }
            }.ignoresSafeArea()
                .onAppear(){
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        self.isActive = true
                    }
                }
                
        }
        
        
            
    }
}



struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
