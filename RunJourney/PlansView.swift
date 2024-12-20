//
//  PlansView.swift
//  RunJourney
//
//  Created by Student on 12/4/23.
//

import Foundation
import SwiftUI

struct PlansView: View {
    //Buttons for Workout Plans
    var body: some View {
            VStack {
                NavigationLink(destination: MileView(viewModel: WorkoutViewModel())) {
                    Text("1 Mile")
                        .frame(width: 200, height: 80)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(20)
                        .padding()
                }
                NavigationLink(destination: FiveKView(viewModel: WorkoutViewModel())) {
                    Text("5k Run")
                        .frame(width: 200, height: 80)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(20)
                        .padding()
                }
                NavigationLink(destination: TenKView(viewModel: WorkoutViewModel())) {
                    Text("10k Run")
                        .frame(width: 200, height: 80)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(20)
                        .padding()
                }
            }
            .padding()
            .navigationTitle("Workout Plans")
        }
}
