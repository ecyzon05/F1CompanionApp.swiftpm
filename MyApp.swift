import SwiftUI

@main
struct MyApp: App {
    @AppStorage("isDarkMode") var isDarkMode = false
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
