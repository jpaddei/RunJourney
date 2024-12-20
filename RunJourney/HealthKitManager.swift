//
//  HealthKitManager.swift
//  RunJourney
//
//  Created by Student on 12/6/23.
//

import Foundation
import HealthKit

class HealthKitManager {
    func setUpHealthRequest(healthStore: HKHealthStore, readdistances: @escaping () -> Void) {
        if HKHealthStore.isHealthDataAvailable(), let distanceWalkingRunning = HKObjectType.quantityType(forIdentifier: HKQuantityTypeIdentifier.distanceWalkingRunning) {
            healthStore.requestAuthorization(toShare: [distanceWalkingRunning], read: [distanceWalkingRunning]) { success, error in
                if success {
                    readdistances()
                } else if error != nil {
                    
                }
            }
        }
        
    }
    
    func readdistanceWalkingRunning(forToday: Date, healthStore: HKHealthStore, completion: @escaping (Double) -> Void) {
        guard let distanceQuantityType = HKQuantityType.quantityType(forIdentifier: .distanceWalkingRunning) else { return }
        let now = Date()
        let startOfDay = Calendar.current.startOfDay(for: now)
        
        let predicate = HKQuery.predicateForSamples(withStart: startOfDay, end: now, options: .strictStartDate)
        
        let query = HKStatisticsQuery(quantityType: distanceQuantityType, quantitySamplePredicate: predicate, options: .cumulativeSum) { _, result, error in
            
            guard let result = result, let sum = result.sumQuantity() else {
                completion(0.0)
                return
            }
            
            completion(sum.doubleValue(for: HKUnit.mile()))
        
        }
        
        healthStore.execute(query)
        
    }
}
