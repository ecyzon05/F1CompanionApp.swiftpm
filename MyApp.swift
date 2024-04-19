import SwiftUI

@main
struct MyApp: App {
    
    @State var Form = Information()
    
    var body: some Scene {
        WindowGroup {
            ContentView(Form: $Form)
        }
    }
}
