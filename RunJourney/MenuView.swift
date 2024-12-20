//
//  MenuView.swift
//  RunJourney
//
//  Created by Student on 12/4/23.
//

import Foundation
import SwiftUI

struct MenuView: View {
    //Main Menu
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: PlansView()) {
                    Text("Workout Plans")
                        .frame(width: 200, height: 80)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(20)
                        .padding()
                }
                NavigationLink(destination: InfoView()) {
                    Text("Workout Information")
                        .frame(width: 200, height: 80)
                        .background(Color.cyan)
                        .foregroundColor(Color.white)
                        .font(.headline)
                        .cornerRadius(20)
                        .padding()
                }
            }
            .padding()
            .navigationTitle("RunJourney")
        }
                
    }
}
