import SwiftUI

struct RacetrackView: View {
    @Binding var Form: Information
    
    var body: some View {
        NavigationStack{
            HStack{
                VStack{
                    
                }
            }
            VStack{
                NavigationLink("Back to home page") {
                    
                    ContentView(Form: $Form)
                }
            }
        }
    }
}
