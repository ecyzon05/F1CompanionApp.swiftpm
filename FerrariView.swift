import SwiftUI

struct FerrariView: View {
   
    var teamData: TeamData

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Ferrari's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
