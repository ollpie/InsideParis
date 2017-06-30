//
//  Location.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 29.06.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import Foundation

class Location {
    
    let maraisFocusLat = 48.861820
    let maraisFoculLong = 2.359358
    
    let martinFocusLat = 48.8724781
    let martinFocusLong = 2.3632998
    
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
    let experienceLat: Double = 48.863530
    let experienceLong: Double = 2.360226
    
    let soiTitle: String = "Soi Paris"
    let soiparisLat: Double = 48.863516
    let soiparisLong: Double = 2.360974
    
    let cactusTitle: String = "Les Succulents Cactus"
    let cactusLat: Double = 48.86249
    let cactusLong: Double = 2.362180
    
    let merciconceptTitle: String = "Merci Concept Store"
    let merciconceptLat: Double = 48.860762
    let merciconceptLong: Double = 2.364760
    
    let frereTitle: String = "Mariage Frères"
    let frereLat: Double = 48.857704
    let frereLong: Double = 2.354385
    
    //marais restaurant
    let chouettesTitle: String = "Les Chouettes"
    let chouettesLat: Double = 48.864383
    let chouettesLong: Double = 2.361384
    
    let mancoraTitle: String = "Máncora"
    let mancoraLat: Double = 48.865655
    let mancoraLong: Double = 2.359413
    
    let pnymaraisTitle: String = "PNY Marais"
    let pnymaraisLat: Double = 48.863808
    let pnymaraisLong: Double = 2.360433
    
    let jajaTitle: String = "Jaja"
    let jajaLat: Double = 48.857631
    let jajaLong: Double = 2.355149
    
    //marais bars
    let lizardTitle: String = "Lizard Lounge"
    let lizardLat: Double = 48.857389
    let lizardLong: Double = 2.354090
    
    let sherryTitle: String = "Sherry Butt"
    let sherryLat: Double = 48.853211
    let sherryLong: Double = 2.36202
    
    let ouatTitle: String = "Once Upon a Time"
    let ouatLat: Double = 48.848751
    let ouatLong: Double = 2.362991

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
    
    
    //st. martin cafes
    let chambreTitle: String = "La Chambre aux Oiseaux"
    let chambreLat: Double = 48.8739105
    let chambreLong: Double = 2.3622913
    
    let bellesTitle: String = "Ten Belles"
    let bellesLat: Double = 48.8735065
    let bellesLong: Double = 2.3626127
    
    let pruneTitle: String = "Chez Prune"
    let pruneLat: Double = 48.8716825
    let pruneLong: Double = 2.3623803
    
    let pancakeTitle: String = "Pancake Sisters"
    let pancakeLong: Double = 48.8710013
    let pancakeLat: Double = 2.3576007
    
    //st. martin culture
    let slowgalerieTitle: String = "Slow Galerie"
    let slowgalerieLat: Double = 48.8649878
    let slowgalerieLong: Double = 2.364209
    
    let panameTitle: String = "Le Paname"
    let panameLat: Double = 48.8683961
    let panameLong: Double = 2.3677274
    
    let potemkineTitle: String = "Potemkine"
    let potemkineLat: Double = 48.8712774
    let potemkineLong: Double = 2.3621676
    
    let artazartTitle: String = "Artazart"
    let artazartLat: Double = 48.8727112
    let artazartLong: Double = 2.3615544
    
    let ephemereTitle: String = "Le Point Éphemère"
    let ephemereLat: Double = 48.8817236
    let ephemereLong: Double = 2.3663929
    
    //st. martin shopping
    let antoineTitle: String = "Antoine & Lili"
    let antoineLat: Double = 48.8740204
    let antoineLong: Double = 2.3606226
    
    let ambrymTitle: String = "Ambrym"
    let ambrymLat: Double = 48.8732428
    let ambrymLong: Double = 2.3608911
    
    let babelTitle: String = "Babel"
    let babelLat: Double = 48.8705547
    let babelLong: Double = 2.3631829
    
    let commercialTitle: String = "Centre Commercial"
    let commercialLat: Double = 48.871272
    let commercialLong: Double = 2.3607999
    
    let madleineTitle: String = "Madeleine & Gustave"
    let madleineLat: Double = 48.8704843
    let madleineLong: Double = 2.3608514
    
    //st. martin restaurant
    let fraicheTitle: String = "Fraîche"
    let fraicheLat: Double = 48.8759685
    let fraicheLong: Double = 2.3674263
    
    let vachesTitle: String = "La Vache dans les Vignes"
    let vachesLat: Double = 48.8696896
    let vachesLong: Double = 2.3649721
    
    let valentineTitle: String = "Blue Valentine"
    let valentineLat: Double = 48.8675372
    let valentineLong: Double = 2.3680767
    
    let mammaTitle: String = "Ober Mamma"
    let mammaLat: Double = 48.8644479
    let mammaLong: Double = 2.3679266
    
    //st. martin bars
    let lavomaticTitle: String = "Lavomatic"
    let lavomaticLat: Double = 48.8684879
    let lavomaticLong: Double = 2.3595929
    
    let cafeaTitle: String = "Café A"
    let cafeaLat: Double = 48.8753225
    let cafeaLong: Double = 2.35802
    
    let generalTitle: String = "Le Comptoir Général"
    let generalLat: Double = 48.8724781
    let generalLong: Double = 2.3632998
    
    let perchoirTitle: String = "Le Perchoir"
    let perchoirLat: Double = 48.8654558
    let perchoirLong: Double = 2.3798288
    
    var chambre: Properties!
    var belles: Properties!
    var prunes: Properties!
    var pancake: Properties!
    
    var slowgalerie: Properties!
    var paname: Properties!
    var potemkine: Properties!
    var artazart: Properties!
    var ephemere: Properties!
    
    var antoine: Properties!
    var ambrym: Properties!
    var babel: Properties!
    var commercial: Properties!
    var madleine: Properties!
    
    var fraiche: Properties!
    var vaches: Properties!
    var valentine: Properties!
    var mamma: Properties!
    
    var lavomatic: Properties!
    var cafea: Properties!
    var general: Properties!
    var perchoire: Properties!
    
    
    
    
    
    var maraisCafes: [Properties]!
    var maraisCulture: [Properties]!
    var maraisShopping: [Properties]!
    var maraisRestaurants: [Properties]!
    var maraisBars: [Properties]!
    var maraisTotal: [[Properties]]!
    
    var martinCafes: [Properties]!
    var martinCulture: [Properties]!
    var martinShopping: [Properties]!
    var martinRestaurants: [Properties]!
    var martinBars: [Properties]!
    var martinTotal: [[Properties]]!
    
    var montmartreCafes: [Properties]!
    var maontmartreCulture: [Properties]!
    var montmartreShopping: [Properties]!
    var montmartreRestaurants: [Properties]!
    var montmartreBars: [Properties]!
    var montmartreTotal: [[Properties]]!
    
    init() {
        initMarais()
        initMartin()
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
        
    }
    
    func initMartin () {
        chambre = Properties()
        chambre.name = chambreTitle
        chambre.mapIcon = "martin_cafe_icon"
        chambre.lattitude = chambreLat
        chambre.longitude = chambreLong
        
        belles = Properties()
        belles.name = bellesTitle
        belles.mapIcon = "martin_cafe_icon"
        belles.lattitude = bellesLat
        belles.longitude = bellesLong
        
        prunes = Properties()
        prunes.name = pruneTitle
        prunes.mapIcon = "martin_cafe_icon"
        prunes.lattitude = pruneLat
        prunes.longitude = pruneLong
        
        pancake = Properties()
        pancake.name = pancakeTitle
        pancake.mapIcon = "martin_cafe_icon"
        pancake.lattitude = pancakeLat
        pancake.longitude = pancakeLong
        
        //Culture
        slowgalerie = Properties()
        slowgalerie.name = slowgalerieTitle
        slowgalerie.mapIcon = "martin_kultur_icon"
        slowgalerie.lattitude = slowgalerieLat
        slowgalerie.longitude = slowgalerieLong
        
        paname = Properties()
        paname.name = panameTitle
        paname.mapIcon = "martin_kultur_icon"
        paname.lattitude = panameLat
        paname.longitude = panameLong
        
        potemkine = Properties()
        potemkine.name = potemkineTitle
        potemkine.mapIcon = "martin_kultur_icon"
        potemkine.lattitude = potemkineLat
        potemkine.longitude = potemkineLong
        
        artazart = Properties()
        artazart.name = artazartTitle
        artazart.mapIcon = "martin_kultur_icon"
        artazart.lattitude = artazartLat
        artazart.longitude = artazartLong
        
        ephemere = Properties()
        ephemere.name = ephemereTitle
        ephemere.mapIcon = "martin_kultur_icon"
        ephemere.lattitude = ephemereLat
        ephemere.longitude = ephemereLong
        
        //shopping
        antoine = Properties()
        antoine.name = antoineTitle
        antoine.mapIcon = "martin_shopping_icon"
        antoine.lattitude = antoineLat
        antoine.longitude = antoineLong
        
        ambrym = Properties()
        ambrym.name = ambrymTitle
        ambrym.mapIcon = "martin_shopping_icon"
        ambrym.lattitude = ambrymLat
        ambrym.longitude = ambrymLong
        
        babel = Properties()
        babel.name = babelTitle
        babel.mapIcon = "martin_shopping_icon"
        babel.lattitude = babelLat
        babel.longitude = babelLong
        
        commercial = Properties()
        commercial.name = commercialTitle
        commercial.mapIcon = "martin_shopping_icon"
        commercial.lattitude = commercialLat
        commercial.longitude = commercialLong
        
        madleine = Properties()
        madleine.name = madleineTitle
        madleine.mapIcon = "martin_shopping_icon"
        madleine.lattitude = madleineLat
        madleine.longitude = madleineLong
        
        //restaurants
        fraiche = Properties()
        fraiche.name = fraicheTitle
        fraiche.mapIcon = "martin_restaurant_icon"
        fraiche.lattitude = fraicheLat
        fraiche.longitude = fraicheLong
        
        vaches = Properties()
        vaches.name = vachesTitle
        vaches.mapIcon = "martin_restaurant_icon"
        vaches.lattitude = vachesLat
        vaches.longitude = vachesLong
        
        valentine = Properties()
        valentine.name = valentineTitle
        valentine.mapIcon = "martin_restaurant_icon"
        valentine.lattitude = valentineLat
        valentine.longitude = valentineLong
        
        mamma = Properties()
        mamma.name = mammaTitle
        mamma.mapIcon = "martin_restaurant_icon"
        mamma.lattitude = mammaLat
        mamma.longitude = mammaLong
        
        //bars
        lavomatic = Properties()
        lavomatic.name = lavomaticTitle
        lavomatic.mapIcon = "martin_bar_icon"
        lavomatic.lattitude = lavomaticLat
        lavomatic.longitude = lavomaticLong
        
        cafea = Properties()
        cafea.name = cafeaTitle
        cafea.mapIcon = "martin_bar_icon"
        cafea.lattitude = cafeaLat
        cafea.longitude = cafeaLong
        
        general = Properties()
        general.name = generalTitle
        general.mapIcon = "martin_bar_icon"
        general.lattitude = generalLat
        general.longitude = generalLong
        
        perchoire = Properties()
        perchoire.name = perchoirTitle
        perchoire.mapIcon = "martin_bar_icon"
        perchoire.lattitude = perchoirLat
        perchoire.longitude = perchoirLong
    }
    
    func getAllMaraisLocations() -> [[Properties]] {
        maraisCafes = [cafeotheque, season, pinson, cinema]
        maraisCulture = [perrotin, instant, roman, ofr]
        maraisShopping = [experience, soi, cactus, merciConcept, frere]
        maraisRestaurants = [chouettes, mancora, pnyMarais, jaja]
        maraisBars = [lizard, sherry, ouat]
        maraisTotal = [maraisCafes, maraisCulture, maraisShopping, maraisRestaurants, maraisBars]
        return maraisTotal
    }
    
    func getAllMartinsLocations() -> [[Properties]] {
        martinCafes = [chambre, belles, prunes, pancake]
        martinCulture = [slowgalerie, paname, potemkine, artazart, ephemere]
        martinShopping = [antoine, ambrym, babel, commercial, madleine]
        martinRestaurants = [fraiche, vaches, valentine, mamma]
        martinBars = [lavomatic, cafea, general, perchoire]
        martinTotal = [martinCafes, martinCulture, martinShopping, martinRestaurants, martinBars]
        return martinTotal
    }
    
    func getMaraisCenter() -> Properties {
        var center = Properties()
        center.lattitude = maraisFocusLat
        center.longitude = maraisFoculLong
        return center
    }
    
    func getMartinCenter() -> Properties {
        var center = Properties()
        center.lattitude = martinFocusLat
        center.longitude = martinFocusLong
        return center
    }
    
}

struct Properties {
    var name = ""
    var longitude = 0.0
    var lattitude = 0.0
    var mapIcon = ""
}
