

import SwiftUI

struct AstonMartinView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Aston's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}



