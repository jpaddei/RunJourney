//
//  5kView.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI

struct FiveKView: View {
    @ObservedObject var viewModel: WorkoutViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.fiveWorkouts) { workout in
                    HStack {
                        Text("\(workout.id)")
                        Text("\(workout.description)")
                        Toggle("", isOn: Binding(get: {workout.completed}, set: {_,_ in viewModel.toggleCompletedFive(for: workout)}))
                    }
                    
                }
            }
            .listStyle(.inset)
            .padding()
        }
        .padding()
        .navigationTitle("5k Run")
    }
}
