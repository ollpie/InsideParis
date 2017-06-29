//
//  MapsViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 15.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit
import GoogleMaps

class MapsViewController: UIViewController {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var mapView: GMSMapView!
    var locations: [[Properties]]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locations = appDelegate.currentQuarter.getLocations()
        
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: self.view.bounds.height*0.123, width: self.view.bounds.width, height: self.view.bounds.height*0.88), camera: GMSCameraPosition.camera(withLatitude: 48.86, longitude: 2.35, zoom: 14))
        self.view.addSubview(mapView)
        
        setMarker()
    }
    
    func setMarker() {
        for i in 0...4 {
            for j in 0...locations[i].count-1 {
                let image = UIImage(named: locations[i][j].mapIcon)!
                let marker1 = GMSMarker()
                marker1.position = CLLocationCoordinate2D(latitude: locations[i][j].lattitude, longitude: locations[i][j].longitude)
                marker1.title = locations[i][j].name
                marker1.icon = UIImage(data: UIImagePNGRepresentation(image)!, scale: 10)
                marker1.map = mapView
            }
        }
    }
}
