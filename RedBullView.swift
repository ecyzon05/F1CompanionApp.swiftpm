
import SwiftUI

struct RedBullView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to RedBull's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
