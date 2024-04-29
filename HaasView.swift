

import SwiftUI

struct HaasView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Haas's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}

