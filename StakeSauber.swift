

import SwiftUI

struct StakeSauber: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Stake Sauber's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
