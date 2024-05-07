import SwiftUI

@main
struct MyApp: App {
    @AppStorage("isDarkMode") var isDarkMode = false
    @State var Form = Information()
    
  
    
    var body: some Scene {
        WindowGroup {
            ContentView(Form: $Form)
                .preferredColorScheme(isDarkMode ? .dark : .light)
        }
    }
}
