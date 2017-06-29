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
    let perrotinLat: Double = 48.860516
    let perrotinLong: Double = 2.362543
    
    let instantTitle: String = "Galerie de L'Instant"
    let instantLat: Double = 48.861820
    let instantLong: Double = 2.359358
    
    let romanTitle: String = "Comme un Roman"
    let romanLat: Double = 48.862942
    let romanLong: Double = 2.360017
    
    let ofrTitle: String = "OFR."
    let ofrLat: Double = 48.865787
    let ofrLong: Double = 2.359139
    
    //marais shopping
    let experienceTitle: String = "Expérience"
    let experienceLat: Double = 48.863
    let experienceLong: Double = 2.360
    
    let soiTitle: String = "Soi Paris"
    let soiparisLat: Double = 48.864
    let soiparisLong: Double = 2.362
    
    let cactusTitle: String = "Les Succulents Cactus"
    let cactusLat: Double = 48.862
    let cactusLong: Double = 2.362
    
    let merciconceptTitle: String = "Merci Concept Store"
    let merciconceptLat: Double = 48.860
    let merciconceptLong: Double = 2.364
    
    let frereTitle: String = "Mariage Frères"
    let frereLat: Double = 48.857
    let frereLong: Double = 2.354
    
    //marais restaurant
    let chouettesTitle: String = "Les Chouettes"
    let chouettesLat: Double = 48.864
    let chouettesLong: Double = 2.361
    
    let mancoraTitle: String = "Máncora"
    let mancoraLat: Double = 48.865
    let mancoraLong: Double = 2.359
    
    let pnymaraisTitle: String = "Pny Marais"
    let pnymaraisLat: Double = 48.863
    let pnymaraisLong: Double = 2.360
    
    let jajaTitle: String = "Jaja"
    let jajaLat: Double = 48.857
    let jajaLong: Double = 2.355
    
    //marais bars
    let lizardTitle: String = "Lizard Lounge"
    let lizardLat: Double = 48.857
    let lizardLong: Double = 2.356
    
    let sherryTitle: String = "Sherry Butt"
    let sherryLat: Double = 48.853
    let sherryLong: Double = 2.362
    
    let ouatTitle: String = "Once Upon a Time"
    let ouatLat: Double = 48.848
    let ouatLong: Double = 2.362
    
    var id: Int
    
    var cafeotheque: Properties!
    var season: Properties!
    var pinson: Properties!
    var cinema: Properties!
    
    var perrotin: Properties!
    var instant: Properties!
    var roman: Properties!
    var ofr: Properties!
    
    var experience: Properties!
    var soi: Properties!
    var cactus: Properties!
    var merciConcept: Properties!
    var frere: Properties!
    
    var chouettes: Properties!
    var mancora: Properties!
    var pnyMarais: Properties!
    var jaja: Properties!
    
    var lizard: Properties!
    var sherry: Properties!
    var ouat: Properties!
    
    var maraisCafes: [Properties]!
    var maraisCulture: [Properties]!
    var maraisShopping: [Properties]!
    var maraisRestaurants: [Properties]!
    var maraisBars: [Properties]!
    var maraisTotal: [[Properties]]!
    
    init(id: Int) {
        self.id = id
        
        initMarais()
    }

    func initMarais() {
        //cafes
        cafeotheque = Properties()
        cafeotheque.name = cafeothequeTitle
        cafeotheque.mapIcon = "marais_cafe_icon"
        cafeotheque.lattitude = cafeothequeLat
        cafeotheque.longitude = cafeothequeLong
        
        season = Properties()
        season.name = seasonTitle
        season.mapIcon = "marais_cafe_icon"
        season.lattitude = seasonLat
        season.longitude = seasonLong
        
        pinson = Properties()
        pinson.name = pinsonTitle
        pinson.mapIcon = "marais_cafe_icon"
        pinson.lattitude = pinsonLat
        pinson.longitude = pinsonLong
        
        cinema = Properties()
        cinema.name = cinemaTitle
        cinema.mapIcon = "marais_cafe_icon"
        cinema.lattitude = pinsonLat
        cinema.longitude = pinsonLong
        
        //culture
        
        perrotin = Properties()
        perrotin.name = perrotinTitle
        perrotin.mapIcon = "marais_kultur_icon"
        perrotin.lattitude = perrotinLat
        perrotin.longitude = perrotinLong
        
        instant = Properties()
        instant.name = instantTitle
        instant.mapIcon = "marais_kultur_icon"
        instant.lattitude = instantLat
        instant.longitude = instantLong
        
        roman = Properties()
        roman.name = romanTitle
        roman.mapIcon = "marais_kultur_icon"
        roman.lattitude = romanLat
        roman.longitude = romanLong
        
        ofr = Properties()
        ofr.name = ofrTitle
        ofr.mapIcon = "marais_kultur_icon"
        ofr.lattitude = romanLat
        ofr.longitude = ofrLong
        
        //shopping
        
        experience = Properties()
        experience.name = experienceTitle
        experience.mapIcon = "marais_shopping_icon"
        experience.lattitude = experienceLat
        experience.longitude = experienceLong
        
        soi = Properties()
        soi.name = soiTitle
        soi.mapIcon = "marais_shopping_icon"
        soi.lattitude = soiparisLat
        soi.longitude = soiparisLong
        
        cactus = Properties()
        cactus.name = cactusTitle
        cactus.mapIcon = "marais_shopping_icon"
        cactus.lattitude = cactusLat
        cactus.longitude = cactusLong
        
        merciConcept = Properties()
        merciConcept.name = merciconceptTitle
        merciConcept.mapIcon = "marais_shopping_icon"
        merciConcept.lattitude = merciconceptLat
        merciConcept.longitude = merciconceptLong
        
        frere = Properties()
        frere.name = frereTitle
        frere.mapIcon = "marais_shopping_icon"
        frere.lattitude = frereLat
        frere.longitude = frereLong
        
        //restaurant
        chouettes = Properties()
        chouettes.name = chouettesTitle
        chouettes.mapIcon = "marais_restaurant_icon"
        chouettes.lattitude = chouettesLat
        chouettes.longitude = chouettesLong
        
        mancora = Properties()
        mancora.name = mancoraTitle
        mancora.mapIcon = "marais_restaurant_icon"
        mancora.lattitude = mancoraLat
        mancora.longitude = mancoraLong
        
        pnyMarais = Properties()
        pnyMarais.name = pnymaraisTitle
        pnyMarais.mapIcon = "marais_restaurant_icon"
        pnyMarais.lattitude = pnymaraisLat
        pnyMarais.longitude = pnymaraisLong
        
        jaja = Properties()
        jaja.name = jajaTitle
        jaja.mapIcon = "marais_restaurant_icon"
        jaja.lattitude = jajaLat
        jaja.longitude = jajaLong
        
        //bars
        lizard = Properties()
        lizard.name = lizardTitle
        lizard.mapIcon = "marais_bar_icon"
        lizard.lattitude = lizardLat
        lizard.longitude = lizardLong
        
        sherry = Properties()
        sherry.name = sherryTitle
        sherry.mapIcon = "marais_bar_icon"
        sherry.lattitude = sherryLat
        sherry.longitude = sherryLong
        
        ouat = Properties()
        ouat.name = ouatTitle
        ouat.mapIcon = "marais_bar_icon"
        ouat.lattitude = ouatLat
        ouat.longitude = ouatLong
        
        maraisCafes = [cafeotheque, season, pinson, cinema]
        maraisCulture = [perrotin, instant, roman, ofr]
        maraisShopping = [experience, soi, cactus, merciConcept, frere]
        maraisRestaurants = [chouettes, mancora, pnyMarais, jaja]
        maraisBars = [lizard, sherry, ouat]
        maraisTotal = [maraisCafes, maraisCulture, maraisShopping, maraisRestaurants, maraisBars]
    }
    
    func getAllLocations() -> [[Properties]] {
        return maraisTotal
    }
    
}

struct Properties {
    var name = ""
    var longitude = 0.0
    var lattitude = 0.0
    var mapIcon = ""
}
