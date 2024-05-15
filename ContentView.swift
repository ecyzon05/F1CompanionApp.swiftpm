import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer() // Pushes VStack towards the top
                
                VStack(spacing: 20) {
                    HStack {
                        Image("F1") // Make sure "F1Logo" is the name of your logo image in the asset catalog
                            .resizable()
                            .frame(width: 100, height: 80) // Adjust the size as needed
                        Text("Companion App")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                    }
                    
                    NavigationLink(destination: F1TeamsView()) {
                        Text("Formula 1 Teams")
                            .font(.title)
                            .foregroundColor(.blue)
                            .padding()
                            .multilineTextAlignment(.center) // Align text in the middle horizontally
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: F1RaceTracks()) {
                        Text("Formula 1 Race Calendar")
                            .font(.title)
                            .foregroundColor(.blue)
                            .padding()
                            .multilineTextAlignment(.center) // Align text in the middle horizontally
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: ChampionshipStandingsView()) {
                        Text("Championship Standings")
                            .font(.title)
                            .foregroundColor(.blue)
                            .padding()
                            .multilineTextAlignment(.center) // Align text in the middle horizontally
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer() // Pushes everything upwards
                    
                }
                .padding()
                .navigationBarTitle("", displayMode: .inline) // Remove the default navigation bar title
            }
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Use compact navigation view style
    }
}
