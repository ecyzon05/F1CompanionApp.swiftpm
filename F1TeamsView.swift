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
                NavigationLink(
                    destination: MercedesView(teamData: mercedesData)
                    isActive: $isMercedesViewActive,
                    label: {
                        Image("MercedesAMGF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 160)
                            .onTapGesture {
                                isMercedesViewActive = true
                            }
                    })
                
                NavigationLink(
                    destination: FerrariView(teamData: ferrariData),
                    isActive: $isFerrariViewActive,
                    label: {
                        Image("FerrariF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 160)
                            .onTapGesture {
                                isFerrariViewActive = true
                            }
                    })
                
                NavigationLink(
                    destination: RedBullView(teamData: redBullData),
                    isActive: $isRedBullViewActive,
                    label: {
                        Image("RedBullF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 300, height: 160)
                            .onTapGesture {
                                isRedBullViewActive = true
                            }
                    })
            }
            .navigationBarTitle("F1 Teams", displayMode: .inline)
        }
    }
}


