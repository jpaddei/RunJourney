//
//  HealthView.swift
//  RunJourney
//
//  Created by Student on 12/5/23.
//

import Foundation
import SwiftUI
import HealthKit

struct HealthView: View {
    @ObservedObject var vm: HealthKitViewModel
    
    var body: some View {
        VStack {
            if vm.isAuthorized {
                VStack {
                    Text("Distance")
                        .font(.title3)
                    
                    Text("\(vm.userdistanceWalkingRunning)")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                }
            } else {
                VStack {
                    Button {
                        vm.healthRequest()
                    } label: {
                        Text("Authorize HealthKit")
                            .font(.headline)
                            .foregroundColor(.white)
                    }
                    .frame(width: 200, height: 80)
                    .background(Color.cyan)
                    .foregroundColor(Color.white)
                    .font(.headline)
                    .cornerRadius(20)
                    .padding()
                }
            }
            
        }
        .padding()
        .navigationTitle("Distance Ran")
        .onAppear {
            vm.readdistancesTakenToday()
        }
    }

}
