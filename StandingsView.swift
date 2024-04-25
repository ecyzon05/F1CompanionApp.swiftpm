import SwiftUI

struct StandingsView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        Text("Championship Standings Content Goes Here")
        ContentView(Form: $Form)
    }
}

