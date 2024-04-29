

import SwiftUI

struct WilliamsView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to William's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
