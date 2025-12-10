//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Martha Mengesha on 2025-12-10.
//

/*
 Topics and skills covered:
     Using a structure to make a custom view
     Creating instances using a structure’s initializer
     Customizing each instance of a structure using properties
     The String, Int, and Bool data types
     Computed properties, which change data based on a condition
 */

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack { // Allows for each VStack to be side by side
            
            // Display the structure as a subview of ContentView.
            DayForecast(day: "Mon", isRainy: true, high: 70, low: 50)
                        
            DayForecast(day: "Tue", isRainy: false, high: 60, low: 40)
            
            DayForecast(day: "Wed", isRainy: false, high: 50, low: 30)
                
            .padding()
        }
        
        
    }
}

struct DayForecast: View {
    
    let day: String // Adds a property to store the day of the week
    let isRainy: Bool
    let high: Int
    let low: Int
    
    var iconName: String {
        
        if isRainy {
            return "cloud.rain.fill"
        } else {
            return "sun.max.fill"
        }
        
    }
    
    var iconColour: Color {
        if isRainy {
            return Color.blue
        } else {
            return Color.yellow
        }
    }
    
    
    var body: some View {
        VStack {
            Text(day) // Passes the data in day which is a String
                .font(Font.largeTitle)
            Image(systemName: iconName)
                .foregroundStyle(iconColour)
                .font(Font.largeTitle)
                .padding(5)
    
            Text("High: \(high)º")
                .fontWeight(Font.Weight.semibold)
            Text("Low: \(low)º")
                .fontWeight(Font.Weight.medium)
                .foregroundStyle(Color.secondary)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
