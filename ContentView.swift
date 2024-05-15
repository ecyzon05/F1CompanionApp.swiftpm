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
                            .shadow(color: .black, radius: 2, x: 0, y: 2) // Adding shadow to the text
                    }
                    
                    Spacer() // Pushes the following VStack upwards
                    
                    // Box around the buttons
                    VStack {
                        NavigationLink(destination: F1TeamsView()) {
                            Text("Formula 1 Teams")
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding()
                                .multilineTextAlignment(.center) // Align text in the middle horizontally
                        }
                        .buttonStyle(PlainButtonStyle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                        
                        NavigationLink(destination: F1RaceTracks()) {
                            Text("Formula 1 Race Calendar")
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding()
                                .multilineTextAlignment(.center) // Align text in the middle horizontally
                        }
                        .buttonStyle(PlainButtonStyle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                        
                        NavigationLink(destination: ChampionshipStandingsView()) {
                            Text("Championship Standings")
                                .font(.title)
                                .foregroundColor(.blue)
                                .padding()
                                .multilineTextAlignment(.center) // Align text in the middle horizontally
                        }
                        .buttonStyle(PlainButtonStyle())
                        .overlay(
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(Color.blue, lineWidth: 2)
                        )
                    }
                    
                    Spacer() // Pushes everything downwards
                }
                .padding()
                .navigationBarTitle("", displayMode: .inline) // Remove the default navigation bar title
                
                Text("*Made by Taras K, Kacper L, Ryder D and Ethan C*")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle()) // Use compact navigation view style
    }
}

