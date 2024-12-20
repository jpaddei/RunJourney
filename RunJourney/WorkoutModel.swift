//
//  WorkoutModel.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation

protocol WorkoutModel {
    //Functions for WorkoutModel
    func toggleCompletedMile(for workout: Workout)
    func toggleCompletedFive(for workout: Workout)
    func toggleCompletedTen(for workout: Workout)
}
