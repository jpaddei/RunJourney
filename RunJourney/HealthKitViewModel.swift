//
//  HealthKitViewModel.swift
//  RunJourney
//
//  Created by Student on 12/6/23.
//

import Foundation
import HealthKit

class HealthKitViewModel: HealthKitManager, ObservableObject {
    private var healthStore = HKHealthStore()
    private var healthKitManager = HealthKitManager()
    @Published var userdistanceWalkingRunning = ""
    @Published var isAuthorized = false
    
    func healthRequest() {
        healthKitManager.setUpHealthRequest(healthStore: healthStore) {
            self.changeAuthorizationStatus()
            self.readdistancesTakenToday()
        }
    }
    
    func readdistancesTakenToday() {
        healthKitManager.readdistanceWalkingRunning(forToday: Date(), healthStore: healthStore) { distance in
            if distance != 0.0 {
                DispatchQueue.main.async {
                    self.userdistanceWalkingRunning = String(format: "%.0f miles", distance)
                }
            }
            else {
                DispatchQueue.main.async {
                    self.userdistanceWalkingRunning = String(format: "%.0f miles", distance)
                }
            }
        }
    }
    
    func changeAuthorizationStatus() {
        guard let distanceQtyType = HKObjectType.quantityType(forIdentifier: .distanceWalkingRunning) else { return }
        let status = self.healthStore.authorizationStatus(for: distanceQtyType)
        
        switch status {
        case .notDetermined:
            isAuthorized = false
        case .sharingDenied:
            isAuthorized = false
        case .sharingAuthorized:
            DispatchQueue.main.async {
                self.isAuthorized = true
            }
        @unknown default:
            isAuthorized = false
        }
    }
    
    
    
    
}
