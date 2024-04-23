import SwiftUI

struct TrackView: View {
    
    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Back to home page") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
