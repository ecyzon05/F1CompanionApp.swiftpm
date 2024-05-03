import SwiftUI

struct TeamData {
    var info: String
}

struct F1TeamsView: View {
    
    @State private var mercedesData = TeamData(info: "Mercedes Info")
    @State private var isMercedesViewActive = false
    @State private var ferrariData = TeamData(info: "Ferrari Info")
    @State private var isFerrariViewActive = false
    @State private var redBullData = TeamData(info: "Red Bull Info")
    @State private var isRedBullViewActive = false
    
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


