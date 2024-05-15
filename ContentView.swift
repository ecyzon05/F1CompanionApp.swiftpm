import SwiftUI

struct ContentView: View {
    
    @Binding var Form: Information
    @State private var selectedOption = 0 // Default selection
    
    var body: some View {
        NavigationView {
            VStack {
                Picker(selection: $selectedOption, label: Text("")) {
                    Text("Lewis Hamilton").tag(0)
                    Text("F1 Logo").tag(1)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal)
                
                DarkModeSwitch()
                
                Spacer()
                
                HStack {
                    Spacer()
                    if selectedOption == 0 {
                        Image("Hamilton")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 2)
                            )
                            .padding(.top, 20)
                            .padding(.trailing, 20)
                    } else {
                        Image("F1Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .clipShape(Circle())
                            .overlay(
                                Circle().stroke(Color.white, lineWidth: 2)
                            )
                            .padding(.top, 20)
                            .padding(.trailing, 20)
                    }
                }
                
                HStack {
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
                
                NavigationStack {
                    VStack {
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
    }
}


