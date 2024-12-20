//
//  Workout.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI

struct Workout: Hashable, Identifiable, Codable {
    //Define Workout
    let id: Int
    let description: String
    var completed: Bool
}

