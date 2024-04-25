import SwiftUI

struct ContentView: View {
    @Binding var Form: Information
    
    var body: some View {
        DarkModeSwitch()
        NavigationStack{
            VStack{
                HStack{
                    NavigationLink("F1 Teams") {
                        
                        F1TeamsView(Form: $Form)
                    }
                    Image("Racer")
                }
                HStack{
                    NavigationLink("Racetracks") {
                        
                        TrackView(Form: $Form)
                    }
                    Image("Race.Track")
                }
                HStack{
                    NavigationLink("Championships Standings") {
                        
                        StandingsView(Form: $Form)
                    }
                    Image("Standing")
                }
            }
            
        }
    }
    
}
