//
//  InfoView.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI

struct InfoView: View {
    //Buttons for Workout Information
    var body: some View {
        VStack {
            NavigationLink(destination: WeatherView()) {
                Text("Weather Information")
                    .frame(width: 200, height: 80)
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .cornerRadius(20)
                    .padding()
            }
            NavigationLink(destination: HealthView(vm: HealthKitViewModel())) {
                Text("Distance Ran")
                    .frame(width: 200, height: 80)
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .cornerRadius(20)
                    .padding()
            }
        }        .padding()
        .navigationTitle("Workout Information")
    }
}
