import SwiftUI

struct F1TeamsView: View {
    
    @Binding var Form: Information
<<<<<<< Updated upstream
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
=======
   
>>>>>>> Stashed changes
    var body: some View {
        HStack(spacing: 5) {
            VStack(spacing: 5) {
                Button(action: {
                   
                }) {
                    Image("MercedesAMGF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                }
                
                NavigationLink(
                    destination: MercedesView(Form: $Form),
                   
                ) {
                    EmptyView()
                }
            }
            
            VStack {
                Button(action: {
                   
                }) {
                    Image("FerrariF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 200)
                }
                
                NavigationLink(
                    destination: FerrariView(Form: $Form),
                  
                ) {
                    EmptyView()
                }
            }
            
            VStack {
                Button(action: {
                   
                }) {
                    Image("RedBullF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 150)
                }
                
                NavigationLink(
                    destination: RedBullView(Form: $Form),
                ) {
                    EmptyView()
                }
            }
            
            VStack {
                Button(action: {
                   
                }) {
                    Image("McLarenF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 150)
                }
                
                NavigationLink(
                    destination: McLarenView(Form: $Form),
                   
                ) {
                    EmptyView() /
                }
            }
            
            VStack {
                Button(action: {
                    
                }) {
                    Image("AstonMartinF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
                
                NavigationLink(
                    destination: AstonMartinView(Form: $Form),
                    
                ) {
                    EmptyView()
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
                
                NavigationLink(
                    destination: VisaCashAppView(Form: $Form),
                 
                 {
                    EmptyView()
                }
            })
            
            VStack {
                Button(action: {
                    
                }) {
                    Image("HaasF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 400, height: 200)
                }
                
                NavigationLink(
                    destination: HaasView(Form: $Form),
              
                {
                    EmptyView()
                }
            }
            
            VStack {
                Button(action: {
                    
                }) {
                    Image("WilliamsF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
                
                NavigationLink(
                    destination: WilliamsView(Form: $Form),
                    
                 {
                    EmptyView()
                }
            }
            
            VStack {
                Button(action: {
                    
                }) {
                    Image("StakeSauberF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
                
                NavigationLink(
                    destination: StakeSauber(Form: $Form),
                    
                 {
                    EmptyView()
                }
            }
            
            VStack {
                Button(action: {
                    Form.alpineViewIsActive.toggle()
                }) {
                    Image("AlpineF1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 100)
                }
                
                NavigationLink(
                    destination: AlpineView(Form: $Form),
                    isActive: $Form.alpineViewIsActive
                ) {
                    EmptyView()
                }
            }
        }
    }
}

