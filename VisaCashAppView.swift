import SwiftUI

struct VisaCashAppView: View {
     @Binding var Form: Information
    var body: some View {
        VStack {
            NavigationLink("Go to Visa's Team!") {
                F1TeamsView(Form: $Form)
            }
        }
    }
}
