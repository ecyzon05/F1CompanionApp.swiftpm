

import SwiftUI

struct ChampionshipStandingsView: View {
    
    @Binding var Form: Information
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        Spacer()
            .navigationBarBackButtonHidden(true)
            .toolbar(content: {
                ToolbarItem (placement: .navigationBarLeading) {
                    
                    Button(action: {
                        presentationMode
                            .wrappedValue
                            .dismiss()
                    }, label: {
                        Image(systemName: "house")
                            .foregroundColor(.blue)
                        Text("Home")
                            .foregroundColor(.blue)
                    })
                }
            })
        NavigationStack{
            HStack {
                VStack {
                    Button(action: {
                    }) {
                        Image("WDCTrophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 400, height: 500)
                    }
                    Text("World Drivers Championship Stadings")
                }
                VStack {
                    Button(action: {
                    }) {
                        Image("WCCTrophy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 370, height: 440)
                    }
                    Text("World Constructors Championship Stadings")
                }
            }
            }
        }
    }
    
