//
//  ContentView.swift
//  WeatherApp
//
//  Created by Павел Курзо on 18.09.22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManagar = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManagar.location {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            } else {
                if locationManagar.isLoading {
                    LoadingView()
                } else {
                    WelcomeView()
                        .environmentObject(locationManagar)
                }
            }
        }
        .background(Color(hue: 0.687, saturation: 0.743, brightness: 0.428))
        .preferredColorScheme(.dark)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
