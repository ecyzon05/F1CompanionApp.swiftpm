
import SwiftUI

struct AlpineView: View {
   


    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Alpine Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
