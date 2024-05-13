import SwiftUI

struct ContentView: View {
    @State private var selectedCountry: String?
    @Binding var form: Information
    
    // Define the custom order of F1 tracks
    let customOrder: [String] = [
        "Bahrain", "Saudi Arabia", "Australia", "Japan", "China",
        "Miami", "Emilia-Romagna", "Monaco", "Canada", "Spain",
        "Austria", "Great Britain", "Hungary", "Belgium", "Netherlands",
        "Italy", "Azerbaijan", "Singapore", "United States", "Mexico",
        "Brazil", "Las Vegas", "Qatar", "Abu Dhabi"
    ]
    
    var body: some View {
        TabView {
            VStack {
                Text("Formula 1 Track Calendar")
                    .font(.title)
                    .padding()
                List(customOrder, id: \.self) { country in
                    Button(action: {
                        self.selectedCountry = country
                    }) {
                        Text(country)
                    }
                }
            }
            .popover(item: $selectedCountry) { country in
                if let circuit = Formula1TrackCalendar.circuits[country] {
                    VStack {
                        Text(circuit.trackName)
                            .font(.title)
                            .padding()
                        Image(circuit.imageName)
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Button("Return to List", action: {
                            self.selectedCountry = nil // Dismisses the popover
                        })
                    }
                }
            }
            .tabItem {
                Image(systemName: "list.dash")
                Text("Tracks")
            }
            
            // Second ContentView2
            ContentView2(form: $form)
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
        }
    }
}

// Second SwiftUI View
struct ContentView2: View {
    @Binding var form: Information
    
    var body: some View {
        DarkModeSwitch()
        NavigationStack {
            VStack {
                // Your content here
            }
        }
    }
}

// Conform String to Identifiable
extension String: Identifiable {
    public var id: String { self }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(form: .constant(Information()))
    }
}
