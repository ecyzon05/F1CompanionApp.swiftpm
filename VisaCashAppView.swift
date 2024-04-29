
import SwiftUI

struct VisaCashAppView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Visa's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
