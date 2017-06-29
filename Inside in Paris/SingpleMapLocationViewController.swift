//
//  SingpleMapLocationViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 29.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit
import GoogleMaps

class SingpleMapLocationViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    var mapView: GMSMapView!
    var locations: [[Properties]]!
    var category = 0
    var item = 0
    var lattitude: Double!
    var longitude: Double!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locations = appDelegate.currentQuarter.getLocations()
        lattitude = locations[category][item].lattitude
        longitude = locations[category][item].longitude
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: self.view.bounds.height*0.123, width: self.view.bounds.width, height: self.view.bounds.height*0.88), camera: GMSCameraPosition.camera(withLatitude: lattitude, longitude: longitude, zoom: 18))
        self.view.addSubview(mapView)
        
        setMarker()
    }
    
    func setMarker() {
        let image = UIImage(named: locations[category][item].mapIcon)!
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: lattitude, longitude: longitude)
        marker1.title = locations[category][item].name
        marker1.icon = UIImage(data: UIImagePNGRepresentation(image)!, scale: 10)
        marker1.map = mapView
    }

}
