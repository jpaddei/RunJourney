//
//  10kView.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI

struct TenKView: View {
    @ObservedObject var viewModel: WorkoutViewModel
    
    var body: some View {
        VStack {
            List {
                ForEach(viewModel.tenWorkouts) { workout in
                    HStack {
                        Text("\(workout.id)")
                        Text("\(workout.description)")
                        Toggle("", isOn: Binding(get: {workout.completed}, set: {_,_ in viewModel.toggleCompletedTen(for: workout)}))
                    }
                    
                }
            }
            .listStyle(.inset)
            .padding()
        }
        .padding()
        .navigationTitle("10k Run")
    }
}
