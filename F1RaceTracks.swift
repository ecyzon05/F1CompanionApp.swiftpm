import SwiftUI

struct F1RaceTracks: View {
    struct Track: Identifiable, Hashable {
        let id = UUID()
        let name: String
    }
    
    @State private var selectedCountry: String?
    
    let customOrder: [String] = [
        "Bahrain", "Saudi Arabia", "Australia", "Japan", "China",
        "Miami", "Emilia-Romagna", "Monaco", "Canada", "Spain",
        "Austria", "Great Britain", "Hungary", "Belgium", "Netherlands",
        "Italy", "Azerbaijan", "Singapore", "United States", "Mexico",
        "Brazil", "Las Vegas", "Qatar", "Abu Dhabi"
    ]
    
    var body: some View {
        NavigationView {
            List(customOrder, id: \.self) { country in
                Button(action: {
                    self.selectedCountry = country
                }) {
                    Text(country)
                }
            }
            .navigationTitle("Formula 1 Track Calendar")
            .listStyle(PlainListStyle())
            
            if let selectedCountry = selectedCountry {
                TrackDetailView(country: selectedCountry)
            } else {
                Text("Select a track")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }
        }
        .tabItem {
            Image(systemName: "list.dash")
            Text("Tracks")
        }
    }
}
