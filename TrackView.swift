import SwiftUI

struct TrackView: View {
    
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
            HStack{
                VStack{
                    Text("Pick a racetrack from the 2024 circuit!")
                    VStack{
                        NavigationLink("Austria") {
                            
                            AustriaView(Form: $Form)
                        }
                        NavigationLink("Azerbaijan") {
                            
                            AzerbaijanView(Form: $Form)
                        }
                        NavigationLink("Bahrain") {
                            
                            BahrainView(Form: $Form)
                        }
                        NavigationLink("Belgium") {
                            
                            BelgiumView(Form: $Form)
                            
                        }
                        NavigationLink("Brazil") {
                            
                            BrazilView(Form: $Form)
                        }
                        NavigationLink("Britain") {
                                
                                BritainView(Form: $Form)
                        }
                        NavigationLink("Canada") {
                                
                                CanadaView(Form: $Form)
                        }
                        NavigationLink("China") {
                            
                            ChinaView(Form: $Form)
                        }
                        NavigationLink("Dhabi") {
                            
                            DhabiView(Form: $Form)
                        }
                        NavigationLink("Emilia") {
                            
                            EmiliaView(Form: $Form)
                        }
                        NavigationLink("Hungary") {
                            
                            HungaryView(Form: $Form)
                        }
                        NavigationLink("Italy") {
                            
                            ItalyView(Form: $Form)
                        }
                        NavigationLink("Japan") {
                            
                            JapanView(Form: $Form)
                        }
                        NavigationLink("Mexico") {
                            
                            MexicoView(Form: $Form)
                        }
                        NavigationLink("Monaco") {
                            
                            MonacoView(Form: $Form)
                        }
                        NavigationLink("Netherlands") {
                            
                            NetherlandsView(Form: $Form)
                        }
                        NavigationLink("Qatar") {
                            
                            QatarView(Form: $Form)
                        }
                        NavigationLink("Sakhir") {
                            
                            SakhirView(Form: $Form)
                        }
                        NavigationLink("Saudi") {
                            
                            SaudiView(Form: $Form)
                        }
                        NavigationLink("Singapore") {
                            
                            SingaporeView(Form: $Form)
                        }
                        NavigationLink("Spain") {
                            
                            SpainView(Form: $Form)
                        }
                        NavigationLink("The United States") {
                            
                            StatesView(Form: $Form)
                        }
                        NavigationLink("Las Vegas") {
                            
                            VegasView(Form: $Form)
                        }             
                        }
                    }
                }
            }
        }
    }
