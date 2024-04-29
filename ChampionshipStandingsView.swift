

import SwiftUI

struct ChampionshipStandingsView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        NavigationStack{
            HStack {
                VStack {
                    Button(action: {
                    }) {
                        Image("WDCTrophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 500)
                    }
                    Text("World Drivers Championship Stadings")
                }
                VStack {
                    Button(action: {
                    }) {
                        Image("WCCTrophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 370, height: 440)
                    }
                    Text("World Constructors Championship Stadings")
                }
            }
            NavigationStack{
                VStack{
                    NavigationLink("Back to home page") {
                        
                        ContentView(Form: $Form)
                    }
                }
            }
        }
    }
}
    
