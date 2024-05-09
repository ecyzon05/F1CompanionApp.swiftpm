

import SwiftUI

struct WilliamsView: View {
   

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
            VStack{
                NavigationLink("Go to William's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}

