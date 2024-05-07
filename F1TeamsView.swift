import SwiftUI

struct TeamData {
    var info: String
}

struct F1TeamsView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        NavigationView {
            VStack {
                Button(action: {
                }) {
                    Image("VisaCashAppRBF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 250)
                }
                Button(action: {
                }) {
                    Image("HaasF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 200)
                }
                Button(action: {
                }) {
                    Image("WilliamsF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
                Button(action: {
                }) {
                    Image("StakeSauberF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
                Button(action: {
                }) {
                    Image("AlpineF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                    }
                }
            }
            .navigationBarTitle("F1 Teams", displayMode: .inline)
        }
    }


