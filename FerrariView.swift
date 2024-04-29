import SwiftUI

struct FerrariView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Ferrari's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
