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
    
    var mapView: GMSMapView!

    /*@IBAction func goHomeBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "goHomeFromMapView", sender: self)
    }*/
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: self.view.bounds.height*0.123, width: self.view.bounds.width, height: self.view.bounds.height*0.88), camera: GMSCameraPosition.camera(withLatitude: 48.86, longitude: 2.35, zoom: 14))
        
        self.view.addSubview(mapView)
        
        /*let camera = GMSCameraPosition.camera(withLatitude: 48.86, longitude: 2.35, zoom: 14)
        let mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: 40, width: 200, height: 200), camera: camera)
        self.view = mapView*/
        
        let marker1 = GMSMarker()
        marker1.position = CLLocationCoordinate2D(latitude: 48.854454, longitude: 2.355748)
        marker1.title = "Caféothèque"
        //marker1.icon = UIImage(named: "bar_icon")
        marker1.map = mapView
        
        let marker2 = GMSMarker()
        marker2.position = CLLocationCoordinate2D(latitude: 48.865138, longitude: 2.3626371)
        marker2.title = "Season"
        //marker2.icon = UIImage(named: "bar_icon_map_40x40")
        marker2.map = mapView
        
        let marker3 = GMSMarker()
        marker3.position = CLLocationCoordinate2D(latitude: 48.863696, longitude: 2.363064)
        marker3.title = "Café Pinson"
        marker3.map = mapView
        
        let marker4 = GMSMarker()
        marker4.position = CLLocationCoordinate2D(latitude: 48.860697, longitude: 2.366664)
        marker4.title = "Cinéma Café"
        marker4.map = mapView


    }
}
