
import SwiftUI

struct RedBullView: View {
   
    var teamData: TeamData
    
    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to RedBull's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}
