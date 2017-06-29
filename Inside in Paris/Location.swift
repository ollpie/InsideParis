//
//  Location.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 29.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import Foundation



class Location {
    
    //marais cafes
    let cafeothequeTitle: String = "Cafeothèque"
    let cafeothequeLat: Double = 48.854429
    let cafeothequeLong: Double = 2.353602
    let seasonTitle: String = "Season"
    let seasonLat: Double = 48.8651390
    let seasonLong: Double = 2.360448
    let pinsonTitle: String = "Café Pinson"
    let pinsonLat: Double = 48.863669
    let pinsonLong: Double = 2.360926
    let cinemaTitle: String = "Cinéma Café"
    let cinemaLong: Double = 48.860690
    let cinemaLat: Double = 2.364469
    
    //marais culture
    let perrotinTitle: String = "Galerie Perrotin"
    let perrotinLat: Double = 48.860
    let perrotinLong: Double = 2.362
    let instantTitle: String = "Galerie de L'Instant"
    let instantLat: Double = 48.861
    let instantLong: Double = 2.359
    let romanTitle: String = "Comme un Roman"
    let romanLat: Double = 48.862
    let romanLong: Double = 2.360
    let ofrTitle: String = "OFR."
    let ofrLat: Double = 48.865
    let ofrLong: Double = 2.359
    
    //marais shopping
    let experienceLat: Double = 48.863
    let experienceLong: Double = 2.360
    let soiparisLat: Double = 48.864
    let soiparisLong: Double = 2.362
    let cactusLat: Double = 48.862
    let cactusLong: Double = 2.362
    let merciconceptLat: Double = 48.860
    let merciconceptLong: Double = 2.364
    let frereLat: Double = 48.857
    let frereLong: Double = 2.354
    
    //marais restaurant
    let chouettesLat: Double = 48.864
    let chouettesLong: Double = 2.361
    let mancoraLat: Double = 48.865
    let mancoraLong: Double = 2.359
    let pnymaraisLat: Double = 48.863
    let pnymaraisLong: Double = 2.360
    let jajaLat: Double = 48.857
    let jajaLong: Double = 2.355
    
    //marais bars
    let lizardLat: Double = 48.857
    let lizardLong: Double = 2.356
    let sherryLat: Double = 48.853
    let sherryLong: Double = 2.362
    let uoatLat: Double = 48.848
    let uoatLong: Double = 2.362
    
    var id: Int
    
    var cafeotheque: Properties!
    var season: Properties!
    var pinson: Properties!
    var cinema: Properties!
    var perrotin: Properties!
    var instant: Properties!
    var roman: Properties!
    var ofr: Properties!
    var maraisCafes: [Properties]!
    var maraisTotal: [[Properties]]!
    
    init(id: Int) {
        self.id = id
        initMarais()
    }

    func initMarais() {
        cafeotheque.name = cafeothequeTitle
        cafeotheque.category = "cafe"
        cafeotheque.lattitude = cafeothequeLat
        cafeotheque.longitude = cafeothequeLong
        
        season.name = seasonTitle
        season.category = "cafe"
        season.lattitude = seasonLat
        season.longitude = seasonLong
        
        pinson.name = pinsonTitle
        pinson.category = "cafe"
        pinson.lattitude = pinsonLat
        pinson.longitude = pinsonLong
        
        cinema.name = cinemaTitle
        cinema.category = "cafe"
        cinema.lattitude = pinsonLat
        cinema.longitude = pinsonLong
        
        perrotin.name = perrotinTitle
        perrotin.category = "culture"
        perrotin.lattitude = perrotinLat
        perrotin.longitude = perrotinLong
        
        instant.name = instantTitle
        instant.category = "culture"
        instant.lattitude = instantLat
        instant.longitude = instantLong
    }
    
}

struct Properties {
    var name = ""
    var longitude = 0.0
    var lattitude = 0.0
    var category = ""
}
