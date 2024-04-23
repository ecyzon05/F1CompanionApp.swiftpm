import SwiftUI

struct ContentView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        
        NavigationStack{
            VStack{
                NavigationLink("F1 Teams") {
                    
                    F1TeamsView(Form: $Form)
                }
                
                NavigationLink("Racetracks") {
                    
                    RacetrackView(Form: $Form)
                }
                
                NavigationLink("Championships Standings") {
                    
                    ChampionshipStandingsView(Form: $Form)
                }
            }
            
        }
    }
    
}
