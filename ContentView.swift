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
                .shadow(
                    color: Color.primary.opacity(0.4), /// shadow color
                    radius: 5, /// shadow radius
                    x: 0, /// x offset
                    y: 10 /// y offset
                    )
                
            Text("COMPANION APP")
                .font(.system(size: 30))
                .shadow(
                    color: Color.primary.opacity(0.4), /// shadow color
                    radius: 5, /// shadow radius
                    x: 0, /// x offset
                    y: 10 /// y offset
                )

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
