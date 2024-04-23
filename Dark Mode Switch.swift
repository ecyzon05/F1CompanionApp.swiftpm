
import SwiftUI

struct DarkModeSwitch: View {
    @AppStorage("isDarkMode") var isDarkMode = false
    var body: some View {
            Button(action: {
                isDarkMode.toggle()
            }, label: {
                Image(systemName: isDarkMode ? "moon.circle.fill" : "moon.circle") .imageScale(.large)
            })
        }
    }
