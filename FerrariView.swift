import SwiftUI

struct FerrariView: View {
    
    
    
    @Binding var Form: Information
    
    var body: some View {
        VStack{
            NavigationLink("GoakKKASKDKASD") {
                ContentView(Form: $Form)
            }
        }
    }
}
