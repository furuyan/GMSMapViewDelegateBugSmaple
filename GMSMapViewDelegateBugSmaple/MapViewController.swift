//
//  MapViewController.swift
//  GMSMapViewDelegateBugSmaple
//
//  Created by Koji Furuya on 2018/05/24.
//  Copyright © 2018 Koji Furuya. All rights reserved.
//

import UIKit
import GoogleMaps

class MapViewController: UIViewController {
    private var mapView: GMSMapView {
        return self.view as! GMSMapView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        let position = GMSCameraPosition.camera(withLatitude: 35.439457, longitude: 139.637047, zoom: 16)
        let update = GMSCameraUpdate.setCamera(position)
        mapView.animate(with: update)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
            let position = GMSCameraPosition.camera(withLatitude: 35.439458, longitude: 139.637048, zoom: 16)
            let update = GMSCameraUpdate.setCamera(position)
            self.mapView.animate(with: update)
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                let position = GMSCameraPosition.camera(withLatitude: 35.439458, longitude: 139.637048, zoom: 16)
                let update = GMSCameraUpdate.setCamera(position)
                self.mapView.animate(with: update)
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                    let position = GMSCameraPosition.camera(withLatitude: 35.439458, longitude: 139.637048, zoom: 16)
                    let update = GMSCameraUpdate.setCamera(position)
                    self.mapView.animate(with: update)
                }
            }
        }
    }
}

extension MapViewController: GMSMapViewDelegate {
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        print("[MAP_DEBUG]didChangePosition:\(position)")
    }
    
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        print("[MAP_DEBUG]idleAtPosition:\(position)")
    }
}
