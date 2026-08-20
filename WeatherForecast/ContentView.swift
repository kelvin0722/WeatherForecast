//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Kelvin Ngacha on 20/08/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(forecasts) { forcast in DayForecast(forcast: forcast) }}
        
    }
}

struct DayForecast: View {
    let forcast: ForeCast
    
    var body: some View {
        VStack {
            Text(forcast.day).font(Font.headline).padding(10)
            Image(systemName: forcast.condition).foregroundStyle(forcast.conditionColor).font(Font.largeTitle).padding(5)
            Text("High: \(forcast.high)").fontWeight(Font.Weight.semibold)
            Text("Low: \(forcast.low)").fontWeight(Font.Weight.semibold)
        }
    }
}

struct ForeCast: Identifiable {
    let id: UUID = UUID()
    let day: String
    let condition: String
    let conditionColor: Color
    let high: Int
    let low: Int
}

let forecasts: [ForeCast] = [
    ForeCast(day: "Mon", condition: "sun.max.fill", conditionColor: Color.yellow, high: 70, low: 50),
    ForeCast(day: "Tue", condition: "cloud.rain.fill", conditionColor: Color.blue, high: 60, low: 40),
]

#Preview {
    ContentView()
}
