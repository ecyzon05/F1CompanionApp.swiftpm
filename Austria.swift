//
//  Austria.swift
//  F1CompanionApp
//
//  Created by Ryder De La Cruz on 4/25/24.
//

import SwiftUI

struct AustriaView: View {
    
    @Binding var Form: Information
    
    var body: some View {
        NavigationStack{
            VStack{
                NavigationLink("Back to home page") {
        
                    ContentView(Form: $Form)
                }
            }
        }
    }
    
}
