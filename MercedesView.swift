
import SwiftUI


struct MercedesView: View {
    var teamData: TeamData
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to Mercedes's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
