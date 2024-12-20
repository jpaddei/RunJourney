//
//  WorkoutViewModel.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI

class WorkoutViewModel: WorkoutModel, ObservableObject {
    //Each workout grouped in each plan
    @Published var mileWorkouts: [Workout] = [
        Workout(id: 1, description: "Walk 1 minute, Run 30 seconds, x10", completed: false),
        Workout(id: 2, description: "Walk 45 seconds, Run 45 seconds, x10", completed: false),
        Workout(id: 3, description: "Walk 1 minute, Run 1 minute, x10", completed: false),
        Workout(id: 4, description: "Walk 30 seconds, Run 1 minute, x10", completed: false),
        Workout(id: 5, description: "Walk 5 minutes, Run 12 minutes (or 1 mile)", completed: false),
    ]
    @Published var fiveWorkouts: [Workout] = [
        Workout(id: 1, description: "Walk 90 seconds, Run 1 minute, 20 minutes", completed: false),
        Workout(id: 2, description: "Rest", completed: false),
        Workout(id: 3, description: "Walk 90 seconds, Run 1 minute, 20 minutes", completed: false),
        Workout(id: 4, description: "Rest", completed: false),
        Workout(id: 5, description: "Walk 90 seconds, Run 1 minute, 20 minutes", completed: false),
        Workout(id: 6, description: "Rest", completed: false),
        Workout(id: 7, description: "Rest", completed: false),
        Workout(id: 8, description: "Walk 2 minutes, Run 90 seconds, 20 minutes", completed: false),
        Workout(id: 9, description: "Rest", completed: false),
        Workout(id: 10, description: "Walk 2 minutes, Run 90 seconds, 20 minutes", completed: false),
        Workout(id: 11, description: "Rest", completed: false),
        Workout(id: 12, description: "Walk 2 minutes, Run 90 seconds, 20 minutes", completed: false),
        Workout(id: 13, description: "Rest", completed: false),
        Workout(id: 14, description: "Rest", completed: false),
        Workout(id: 15, description: "Walk 2 minutes, Run 2 minutes, 20 minutes", completed: false),
        Workout(id: 16, description: "Rest", completed: false),
        Workout(id: 17, description: "Walk 2.5 minutes, Run 2.5 minutes, 20 minutes", completed: false),
        Workout(id: 18, description: "Rest", completed: false),
        Workout(id: 19, description: "Walk 2.5 minutes, Run 2.5 minutes, 20 minutes", completed: false),
        Workout(id: 20, description: "Rest", completed: false),
        Workout(id: 21, description: "Rest", completed: false),
        Workout(id: 22, description: "Walk 2 minutes, Run 3 minutes, 20 minutes", completed: false),
        Workout(id: 23, description: "Rest", completed: false),
        Workout(id: 24, description: "Walk 2 minutes, Run 3 minutes, 20 minutes", completed: false),
        Workout(id: 25, description: "Rest", completed: false),
        Workout(id: 26, description: "Walk 2.5 minutes, Run 4 minutes, 20 minutes", completed: false),
        Workout(id: 27, description: "Rest", completed: false),
        Workout(id: 28, description: "Rest", completed: false),
        Workout(id: 29, description: "Walk 3 minutes, Run 5 minutes, x3", completed: false),
        Workout(id: 30, description: "Rest", completed: false),
        Workout(id: 31, description: "Run 8 minutes, Walk 5 minutes, Run 8 minutes", completed: false),
        Workout(id: 32, description: "Rest", completed: false),
        Workout(id: 33, description: "Run 20 minutes", completed: false),
        Workout(id: 34, description: "Rest", completed: false),
        Workout(id: 35, description: "Rest", completed: false),
        Workout(id: 36, description: "Walk 3 minutes, Run 6 minutes, x2", completed: false),
        Workout(id: 37, description: "Rest", completed: false),
        Workout(id: 38, description: "Run 10 minutes, Walk 3 minutes, Run 10 minutes", completed: false),
        Workout(id: 39, description: "Rest", completed: false),
        Workout(id: 40, description: "Run 25 minutes", completed: false),
        Workout(id: 41, description: "Rest", completed: false),
        Workout(id: 42, description: "Rest", completed: false),
        Workout(id: 43, description: "Run 25 minutes", completed: false),
        Workout(id: 44, description: "Rest", completed: false),
        Workout(id: 45, description: "Run 25 minutes", completed: false),
        Workout(id: 46, description: "Rest", completed: false),
        Workout(id: 47, description: "Run 25 minutes", completed: false),
        Workout(id: 48, description: "Rest", completed: false),
        Workout(id: 49, description: "Rest", completed: false),
        Workout(id: 50, description: "Run 30 minutes", completed: false),
        Workout(id: 51, description: "Rest", completed: false),
        Workout(id: 52, description: "Run 30 minutes", completed: false),
        Workout(id: 53, description: "Rest", completed: false),
        Workout(id: 54, description: "Run 30 minutes", completed: false),
        Workout(id: 55, description: "Rest", completed: false),
        Workout(id: 56, description: "Run 5k!", completed: false),
    ]
    @Published var tenWorkouts: [Workout] = [
        Workout(id: 1, description: "Walk 90 seconds, Run 1 minute, 20 minutes", completed: false),
        Workout(id: 2, description: "Rest", completed: false),
        Workout(id: 3, description: "Walk 90 seconds, Run 1 minute, 20 minutes", completed: false),
        Workout(id: 4, description: "Rest", completed: false),
        Workout(id: 5, description: "Walk 90 seconds, Run 1 minute, 20 minutes", completed: false),
        Workout(id: 6, description: "Rest", completed: false),
        Workout(id: 7, description: "Rest", completed: false),
        Workout(id: 8, description: "Walk 2 minutes, Run 90 seconds, 20 minutes", completed: false),
        Workout(id: 9, description: "Rest", completed: false),
        Workout(id: 10, description: "Walk 2 minutes, Run 90 seconds, 20 minutes", completed: false),
        Workout(id: 11, description: "Rest", completed: false),
        Workout(id: 12, description: "Walk 2 minutes, Run 90 seconds, 20 minutes", completed: false),
        Workout(id: 13, description: "Rest", completed: false),
        Workout(id: 14, description: "Rest", completed: false),
        Workout(id: 15, description: "Walk 2 minutes, Run 2 minutes, 20 minutes", completed: false),
        Workout(id: 16, description: "Rest", completed: false),
        Workout(id: 17, description: "Walk 2.5 minutes, Run 2.5 minutes, 20 minutes", completed: false),
        Workout(id: 18, description: "Rest", completed: false),
        Workout(id: 19, description: "Walk 2.5 minutes, Run 2.5 minutes, 20 minutes", completed: false),
        Workout(id: 20, description: "Rest", completed: false),
        Workout(id: 21, description: "Rest", completed: false),
        Workout(id: 22, description: "Walk 2 minutes, Run 3 minutes, 20 minutes", completed: false),
        Workout(id: 23, description: "Rest", completed: false),
        Workout(id: 24, description: "Walk 2 minutes, Run 3 minutes, 20 minutes", completed: false),
        Workout(id: 25, description: "Rest", completed: false),
        Workout(id: 26, description: "Walk 2.5 minutes, Run 4 minutes, 20 minutes", completed: false),
        Workout(id: 27, description: "Rest", completed: false),
        Workout(id: 28, description: "Rest", completed: false),
        Workout(id: 29, description: "Walk 3 minutes, Run 5 minutes, x3", completed: false),
        Workout(id: 30, description: "Rest", completed: false),
        Workout(id: 31, description: "Run 8 minutes, Walk 5 minutes, Run 8 minutes", completed: false),
        Workout(id: 32, description: "Rest", completed: false),
        Workout(id: 33, description: "Run 20 minutes", completed: false),
        Workout(id: 34, description: "Rest", completed: false),
        Workout(id: 35, description: "Rest", completed: false),
        Workout(id: 36, description: "Walk 3 minutes, Run 6 minutes, x2", completed: false),
        Workout(id: 37, description: "Rest", completed: false),
        Workout(id: 38, description: "Run 10 minutes, Walk 3 minutes, Run 10 minutes", completed: false),
        Workout(id: 39, description: "Rest", completed: false),
        Workout(id: 40, description: "Run 25 minutes", completed: false),
        Workout(id: 41, description: "Rest", completed: false),
        Workout(id: 42, description: "Rest", completed: false),
        Workout(id: 43, description: "Run 25 minutes", completed: false),
        Workout(id: 44, description: "Rest", completed: false),
        Workout(id: 45, description: "Run 25 minutes", completed: false),
        Workout(id: 46, description: "Rest", completed: false),
        Workout(id: 47, description: "Run 25 minutes", completed: false),
        Workout(id: 48, description: "Rest", completed: false),
        Workout(id: 49, description: "Rest", completed: false),
        Workout(id: 50, description: "Run 30 minutes", completed: false),
        Workout(id: 51, description: "Rest", completed: false),
        Workout(id: 52, description: "Run 30 minutes", completed: false),
        Workout(id: 53, description: "Rest", completed: false),
        Workout(id: 54, description: "Run 30 minutes", completed: false),
        Workout(id: 55, description: "Rest", completed: false),
        Workout(id: 56, description: "Run 5k!", completed: false),
        Workout(id: 57, description: "Rest", completed: false),
        Workout(id: 58, description: "Run 2.5 miles", completed: false),
        Workout(id: 59, description: "Run 1.5 miles", completed: false),
        Workout(id: 60, description: "Rest", completed: false),
        Workout(id: 61, description: "Run 2.5 miles", completed: false),
        Workout(id: 62, description: "Rest", completed: false),
        Workout(id: 63, description: "Run 4 miles", completed: false),
        Workout(id: 64, description: "Rest", completed: false),
        Workout(id: 65, description: "Run 2.5 miles", completed: false),
        Workout(id: 66, description: "Run 1.5 miles", completed: false),
        Workout(id: 67, description: "Rest", completed: false),
        Workout(id: 68, description: "Run 2.5 miles", completed: false),
        Workout(id: 69, description: "Rest", completed: false),
        Workout(id: 70, description: "Run 4.5 miles", completed: false),
        Workout(id: 71, description: "Rest", completed: false),
        Workout(id: 72, description: "Run 3 miles", completed: false),
        Workout(id: 73, description: "Run 4 miles", completed: false),
        Workout(id: 74, description: "Rest", completed: false),
        Workout(id: 75, description: "Run 3 miles", completed: false),
        Workout(id: 76, description: "Rest", completed: false),
        Workout(id: 77, description: "Run 5 miles", completed: false),
        Workout(id: 78, description: "Rest", completed: false),
        Workout(id: 79, description: "Run 3 miles", completed: false),
        Workout(id: 80, description: "Run 4 miles", completed: false),
        Workout(id: 81, description: "Rest", completed: false),
        Workout(id: 82, description: "Run 3 miles", completed: false),
        Workout(id: 83, description: "Rest", completed: false),
        Workout(id: 84, description: "Run 10k!", completed: false),
    ]
    
    //initialize workouts
    init() {
        loadWorkouts()
    }
    
    //encoding
    private func saveWorkouts() {
        do {
            let encoder = JSONEncoder()
            let dataMile = try encoder.encode(mileWorkouts)
            let dataFive = try encoder.encode(fiveWorkouts)
            let dataTen = try encoder.encode(tenWorkouts)
            
            UserDefaults.standard.set(dataMile, forKey: "mileWorkouts")
            UserDefaults.standard.set(dataFive, forKey: "fiveWorkouts")
            UserDefaults.standard.set(dataTen, forKey: "tenWorkouts")
        } catch {
            print("Error encoding")
        }
    }
    
    //decoding
    private func loadWorkouts() {
        if let dataMile = UserDefaults.standard.data(forKey: "mileWorkouts"),
           let dataFive = UserDefaults.standard.data(forKey: "fiveWorkouts"),
           let dataTen = UserDefaults.standard.data(forKey: "tenWorkouts") {
            do {
                let decoder = JSONDecoder()
                mileWorkouts = try decoder.decode([Workout].self, from: dataMile)
                fiveWorkouts = try decoder.decode([Workout].self, from: dataFive)
                tenWorkouts = try decoder.decode([Workout].self, from: dataTen)
            } catch {
                print("Error decoding")
            }
        }
    }
    
    //allow user to mark day as completed
    func toggleCompletedMile(for workout: Workout) {
        if let index = mileWorkouts.firstIndex(where: {$0.id == workout.id }) {
            mileWorkouts[index].completed.toggle()
            saveWorkouts()
        }
    }
    func toggleCompletedFive(for workout: Workout) {
        if let index = fiveWorkouts.firstIndex(where: {$0.id == workout.id }) {
            fiveWorkouts[index].completed.toggle()
            saveWorkouts()
        }
    }
    func toggleCompletedTen(for workout: Workout) {
        if let index = tenWorkouts.firstIndex(where: {$0.id == workout.id }) {
            tenWorkouts[index].completed.toggle()
            saveWorkouts()
        }
    }
}
