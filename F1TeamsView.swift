import SwiftUI


struct F1TeamsView: View {
    
    
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
        HStack(spacing: 5) {
            VStack(spacing: 5) {
                Button(action: {
                }) {
                    Image("MercedesAMGF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                    
                    
                }
                
                Button(action: {
                }) {
                    Image("FerrariF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                }
                
                Button(action: {
                }) {
                    Image("RedBullF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 150)
                }
                
                Button(action: {
                }) {
                    Image("McLarenF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                }
                Button(action: {
                }) {
                    Image("AstonMartinF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
            }
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
    }
}
