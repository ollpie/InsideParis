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
    var centerLattitude: Double!
    var centerLongitutde: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locations = appDelegate.currentQuarter.getLocations()
        let center = appDelegate.currentQuarter.getCenter()
        centerLattitude = center.lattitude
        centerLongitutde = center.longitude
        
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: self.view.bounds.height*0.123, width: self.view.bounds.width, height: self.view.bounds.height*0.88), camera: GMSCameraPosition.camera(withLatitude: centerLattitude, longitude: centerLongitutde, zoom: 15))
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
