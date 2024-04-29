
import SwiftUI


struct MercedesView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Mercedes's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
