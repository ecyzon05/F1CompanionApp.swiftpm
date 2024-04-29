import SwiftUI

struct CanadaView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Back to home page") {
                    
                    ContentView(Form: $Form)
                }
            }
        }
    }
    
}
