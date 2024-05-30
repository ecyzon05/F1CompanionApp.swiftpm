//
//  Info Page.swift
//  F1CompanionApp
//
//  Created by Kacper Lechowicz on 5/30/24.
//
import SwiftUI
struct InfoPage: View {
    var body: some View {
        ScrollView {
            HStack(spacing: 20) {
                VStack(spacing: 20) {
                    Text("Welcome")
                    Text("This app tracks F1 Team Standings as well as tells you info about the different tracks and players.")
                    }
                }
            }
            
        }
}
