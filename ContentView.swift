import SwiftUI

struct ContentView: View {
    @Binding var Form: Information
    
    var body: some View {
        
        DarkModeSwitch()
        Spacer()
        Text("F1 COMPANION APP")
            .font(.system(size: 80))
            .fontWeight(.bold)
        
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
                        
                        ChampionshipStandingsView(Form: $Form)
                    }
                    Image("Standing")
                }
            }
            
        }
    }
    
}
