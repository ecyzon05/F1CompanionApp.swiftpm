import SwiftUI

struct TrackDetailView: View {
    let country: String
    
    var body: some View {
        VStack {
            if let circuit = Formula1TrackCalendar.circuits[country] {
                Text(circuit.trackName)
                    .font(.largeTitle)
                    .padding()
                Image(circuit.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            } else {
                Text("No details available")
                    .font(.largeTitle)
                    .foregroundColor(.gray)
            }
        }
        .navigationTitle(country)
    }
}
