import SwiftUI

struct TeamStatisticsView: View {
    let teamName: String
    
    // Example statistics for each team
    let championships: Int
    let grandPrixWins: Int
    let podiums: Int
    let polePositions: Int
    let carImageName: String
    let currentDrivers: [Driver]
    
    init(teamName: String) {
        self.teamName = teamName
        
        // Example statistics for each team (you can replace these with actual data)
        switch teamName {
        case "Mercedes-AMG Petronas Formula 1 Team":
            championships = 7
            grandPrixWins = 116
            podiums = 229
            polePositions = 136
            carImageName = "mercedes_car"
            currentDrivers = [
                Driver(name: "Lewis Hamilton", nationality: "British", wins: 103),
                Driver(name: "George Russell", nationality: "British", wins: 1)
            ]
        case "Red Bull Racing":
            championships = 6
            grandPrixWins = 72
            podiums = 182
            polePositions = 133
            carImageName = "redbull_car"
            currentDrivers = [
                Driver(name: "Max Verstappen", nationality: "Dutch", wins: 20),
                Driver(name: "Sergio Perez", nationality: "Mexican", wins: 2)
            ]
        case "McLaren F1 Team":
            championships = 8
            grandPrixWins = 182
            podiums = 485
            polePositions = 155
            carImageName = "mclaren_car"
            currentDrivers = [
                Driver(name: "Lando Norris", nationality: "British", wins: 1),
                Driver(name: "Oscar Piastri", nationality: "Australian", wins: 0)
            ]
            // Add cases for other teams here...
        default:
            championships = 0
            grandPrixWins = 0
            podiums = 0
            polePositions = 0
            carImageName = "default_car"
            currentDrivers = []
        }
    }
    
    var body: some View {
        VStack {
            Text(teamName)
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.top, 40)
            
            Image(carImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 100)
            
            Divider()
                .padding(.vertical, 20)
            
            VStack(spacing: 20) {
                StatisticRow(title: "Championships", value: championships)
                StatisticRow(title: "Grand Prix Wins", value: grandPrixWins)
                StatisticRow(title: "Podiums", value: podiums)
                StatisticRow(title: "Pole Positions", value: polePositions)
            }
            .padding(.horizontal, 20)
            
            Divider()
                .padding(.vertical, 20)
            
            Text("Current Drivers:")
                .font(.title3)
                .fontWeight(.bold)
            
            ForEach(currentDrivers, id: \.name) { driver in
                DriverRow(driver: driver)
            }
            
            Spacer()
        }
        .navigationBarTitle(teamName)
    }
}

struct DriverRow: View {
    let driver: Driver
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(driver.name)
                    .font(.headline)
                Text(driver.nationality)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text("Wins: \(driver.wins)")
                .font(.headline)
        }
        .padding(.horizontal)
        .padding(.vertical, 5)
    }
}

struct StatisticRow: View {
    let title: String
    let value: Int
    
    var body: some View {
        HStack {
            Text(title)
                .foregroundColor(.primary)
                .font(.headline)
            Spacer()
            Text("\(value)")
                .foregroundColor(.secondary)
                .font(.headline)
        }
    }
}

struct Driver {
    let name: String
    let nationality: String
    let wins: Int
}
