//
//  LocationManager.swift
//  RunJourney
//
//  Created by Student on 12/6/23.
//

import Foundation
import SwiftUI
import CoreLocation

import UIKit
import MapKit

class GetLocation: UIViewController, CLLocationManagerDelegate, ObservableObject {

    var locationManager: CLLocationManager!
    var lat: Double = 0
    var lon: Double = 0
    var region: CLLocation?

    override func viewDidLoad() {
        super.viewDidLoad()

        self.locationManager = CLLocationManager()
        self.locationManager?.delegate = self
        self.locationManager.desiredAccuracy = kCLLocationAccuracyBest
        self.locationManager.requestAlwaysAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            print("Location Enabled")
            self.locationManager.startUpdatingLocation()
        } else {
            print("Location Not Enabled")
        }
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.last else { return }

        let latitude = location.coordinate.latitude
        let longitude = location.coordinate.longitude

        lat = latitude
        lon = longitude
        region = location
    }
}


