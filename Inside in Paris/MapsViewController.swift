//
//  MapsViewController.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 15.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import UIKit
import GoogleMaps

class MapsViewController: UIViewController, GMSMapViewDelegate {
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    let category: Int = 0
    let page: Int = 1
    
    var mapView: GMSMapView!
    var locations: [[Properties]]!
    var centerLattitude: Double!
    var centerLongitutde: Double!
    var locationPage: Int = 0
    var locationCategory: Int = 0
    var locationCategoryAndPAge: [Int]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locations = appDelegate.currentQuarter.getLocations()
        let center = appDelegate.currentQuarter.getCenter()
        centerLattitude = center.lattitude
        centerLongitutde = center.longitude
        
        mapView = GMSMapView.map(withFrame: CGRect(x: 0, y: self.view.bounds.height*0.123, width: self.view.bounds.width, height: self.view.bounds.height*0.88), camera: GMSCameraPosition.camera(withLatitude: centerLattitude, longitude: centerLongitutde, zoom: 15))
        mapView.delegate = self
        self.view.addSubview(mapView)
        
        setMarker()
    }
    
    func setMarker() {
        for i in 0...4 {
            for j in 0...locations[i].count-1 {
                let image = UIImage(named: locations[i][j].mapIcon)!
                let marker = GMSMarker()
                marker.position = CLLocationCoordinate2D(latitude: locations[i][j].lattitude, longitude: locations[i][j].longitude)
                marker.title = locations[i][j].name
                marker.snippet = Strings().markerDescription
                marker.icon = UIImage(data: UIImagePNGRepresentation(image)!, scale: 10)
                marker.map = mapView
            }
        }
    }
    
    func mapView(_ mapView: GMSMapView, didTapInfoWindowOf marker: GMSMarker) {
        locationCategoryAndPAge = appDelegate.currentQuarter.getCategoryAndPage(name: marker.title!)
        locationPage = locationCategoryAndPAge[page]
        locationCategory = locationCategoryAndPAge[category]
        performSegue(withIdentifier: "mapToDetailView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mapToDetailView" {
            let controller = segue.destination as! DetailViewController
            controller.currentPage = locationPage
            controller.category = locationCategory
            controller.cameFromMapsView = true
            controller.viewWasVisited = false
        }
    }
    
    @IBAction func prepareForUnwindToMainMapsView (segue:UIStoryboardSegue){
        
    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towardsViewController subsequentVC: UIViewController) {
        let segue = UnwindRightLeftTransitionSegue(identifier: unwindSegue.identifier, source: unwindSegue.source, destination: unwindSegue.destination)
        segue.perform()
    }
    
}
