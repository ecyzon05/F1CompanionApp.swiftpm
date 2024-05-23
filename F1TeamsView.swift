import SwiftUI

struct F1TeamsView: View {
    var body: some View {
        ScrollView {
            HStack(spacing: 20) {
                VStack(spacing: 20) {
                    NavigationLink(destination: TeamStatisticsView(teamName: "Mercedes-AMG Petronas Formula 1 Team")) {
                        Image("MercedesAMGF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 75)
                    }
                    
                    NavigationLink(destination: TeamStatisticsView(teamName: "Red Bull Racing")) {
                        Image("RedBullF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 75)
                    }
                    
                    NavigationLink(destination: TeamStatisticsView(teamName: "McLaren F1 Team")) {
                        Image("McLarenF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 75)
                    }
                    
                    NavigationLink(destination: TeamStatisticsView(teamName: "Haas F1 Team")) {
                        Image("HaasF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 75)
                    }
                    
                    NavigationLink(destination: TeamStatisticsView(teamName: "Alfa Romeo Racing")) {
                        Image("StakeSauberF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 75)
                    }
                }
                
                VStack(spacing: 20) {
                    NavigationLink(destination: TeamStatisticsView(teamName: "Visa Cash App Racing Bulls Formula 1 Team")) {
                        Image("VisaCashAppRBF1")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 150, height: 100)
                    }
                    
                    VStack(spacing: 20) {
                        NavigationLink(destination: TeamStatisticsView(teamName: "Scuderia Ferrari")) {
                            Image("FerrariF1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 100)
                        }
                        
                        NavigationLink(destination: TeamStatisticsView(teamName: "Aston Martin Aramco F1 Team")) {
                            Image("AstonMartinF1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 50)
                        }
                        
                        NavigationLink(destination: TeamStatisticsView(teamName: "Williams Racing")) {
                            Image("WilliamsF1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 50)
                        }
                        
                        NavigationLink(destination: TeamStatisticsView(teamName: "Alpine F1 Team")) {
                            Image("AlpineF1")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 150, height: 50)
                        }
                        }
                    }
                }
                .padding()
            }
        }
    }
