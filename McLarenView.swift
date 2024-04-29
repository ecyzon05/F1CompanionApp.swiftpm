
import SwiftUI

struct McLarenView: View {
   

    @Binding var Form: Information
    
    var body: some View {
            VStack{
                NavigationLink("Go to McLaren's Team!") {
                    
                    ContentView(Form: $Form)
                }
            }
    }
    
}

