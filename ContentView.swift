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
                            .foregroundColor(.white)
                    }
                    
                    NavigationLink(destination: F1TeamsView()) {
                        Text("Formula 1 Teams")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding()
                            .multilineTextAlignment(.center) // Align text in the middle horizontally
                            .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.red, lineWidth: 2)
                                    )
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: F1RaceTracks()) {
                        Text("Formula 1 Race Calendar")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding()
                            .multilineTextAlignment(.center) // Align text in the middle horizontally
                            .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.red, lineWidth: 2)
                                    )
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    NavigationLink(destination: ChampionshipStandingsView()) {
                        Text("Championship Standings")
                            .font(.title)
                            .foregroundColor(.red)
                            .padding()
                            .multilineTextAlignment(.center) // Align text in the middle horizontally
                            .overlay(
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color.red, lineWidth: 2)
                                    )
                    }
                    .buttonStyle(PlainButtonStyle())
                    
                    Spacer() // Pushes everything upwards
                    
                }
                .padding()
                .navigationBarTitle("", displayMode: .inline) // Remove the default navigation bar title
                
                Link("Driver Info", destination: URL(string: "https://www.formula1.com/en/drivers")!)
                
                Text("*Made by Taras K, Kacper L, Ryder D and Ethan C*")
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(
                Image("Chalkk")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                )

        }
        .navigationViewStyle(StackNavigationViewStyle()) // Use compact navigation view style
    }
}

