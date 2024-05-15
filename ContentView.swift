import SwiftUI

struct ContentView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        
        DarkModeSwitch()
        Spacer()
        HStack{
            Image("F11")
                .resizable()
                .frame(width: 200, height: 140)
            Text("COMPANION APP")
                .font(.system(size: 80))
                .fontWeight(.bold)

        }
        NavigationStack{
            VStack{
                HStack{
                    NavigationLink("F1 Teams"){
                        

                        F1TeamsView(Form: $Form)

                       

                    }
                    .font(.largeTitle)
                        Image("Racer")
                    }
                    HStack{
                        NavigationLink("Racetracks") {
                            
                            TrackView(Form: $Form)
                        }
                        Image("Race.Track")
                    }
                    .font(.largeTitle)
                    HStack{
                        NavigationLink("Championships Standings") {
                            
                            ChampionshipStandingsView(Form: $Form)
                        }
                        Image("Standing")
                    }
                    .font(.largeTitle)
                }
            }
        }
    }
