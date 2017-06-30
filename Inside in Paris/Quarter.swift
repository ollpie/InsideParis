//
//  Quarter.swift
//  Inside in Paris
//
//  Created by Oliver Pieper on 21.05.17.
//  Copyright © 2017 Oliver Pieper. All rights reserved.
//

import Foundation

class Quarter {

    let maraisTitle: String = "marais_gesamt"
    let maraisCategory: String = "menu_marais"
    let maraisWSVideoURL: String = "Marais"
    let maraisWOVideoURL: String = "Marais_ohne"
    let maraisBars: String = "bars_marais"
    let maraisCafes: String = "cafes_marais"
    let maraisCulture: String = "kultur_marais"
    let maraisRestaurants: String = "restaurants_marais"
    let maraisShopping: String = "shopping_marais"
    let maraisLocal: String = "local_marais"
    let maraisCategoryURLs: [String]
    let maraisCategoryWidth: [Int]
    let maraisCategoryHeight: [Int]
    
    let canalTitle: String = "martin_gesamt"
    let martinCategory: String = "menu_martin"
    let canalWSVideoURL: String = "Canal"
    let canalWOVideoURL: String = "Canal_ohne"
    let canalBars: String = "bars_canal"
    let canalCafes: String = "cafes_canal"
    let canalCulture: String = "kultur_canal"
    let canalRestaurants: String = "restaurants_canal"
    let canalShopping: String = "shopping_canal"
    let canalLocal: String = "local_canal"
    let canalCategoryURLs: [String]
    let canalCategoryWidth: [Int]
    let canalCategoryHeight: [Int]
    
    let montmartreTitle: String = "montmartre_gesamt"
    let montmartreCategory: String = "menu_montmartre"
    let montmartreWSVideoURL: String = "Montmartre"
    let montmartreWOVideoURL: String = "Montmartre_ohne"
    let montmartreBars: String = "bars_montmartre"
    let montmartreCafes: String = "cafes_montmartre"
    let montmartreCulture: String = "kultur_montmartre"
    let montmartreRestaurants: String = "restaurants_montmartre"
    let montmartreShopping: String = "shopping_montmartre"
    let montmartreLocal: String = "AboutMe"
    let montmartreCategoryURLs: [String]
    let montmartreCategoryWidth: [Int]
    let montmartreCategoryHeight: [Int]
    
    let allCategoryURLs: [[String]]
    let allCategoryWidths: [[Int]]
    let allCategoryHeights: [[Int]]
    
    let locations: Location
    
    var id: Int
    
    init(id: Int) {
        self.id = id
        maraisCategoryURLs = [maraisCafes, maraisCulture, maraisShopping, maraisRestaurants, maraisBars, maraisLocal]
        canalCategoryURLs = [canalCafes, canalCulture, canalShopping, canalRestaurants, canalBars, canalLocal]
        montmartreCategoryURLs = [montmartreCafes, montmartreCulture, montmartreShopping, montmartreRestaurants, montmartreBars, montmartreLocal]
        maraisCategoryWidth = [4, 4, 5, 4, 3, 1]
        canalCategoryWidth = [4, 5, 5, 4, 4, 1]
        montmartreCategoryWidth = [4, 4, 5, 4, 4, 1]
        maraisCategoryHeight = [3, 3, 3, 3, 3, 5]
        canalCategoryHeight = [3, 3, 3, 3, 3, 5]
        montmartreCategoryHeight = [3, 3, 3, 3, 3, 2]
        allCategoryURLs = [maraisCategoryURLs, canalCategoryURLs, montmartreCategoryURLs]
        allCategoryWidths = [maraisCategoryWidth, canalCategoryWidth, montmartreCategoryWidth]
        allCategoryHeights = [maraisCategoryHeight, canalCategoryHeight, montmartreCategoryHeight]
        
        locations = Location()
    }
    
    func getName() -> String {
        var result: String?
        switch id {
        case 0:
            result = maraisTitle
            break
        case 1:
            result = canalTitle
            break
        case 2:
            result = montmartreTitle
            break
        default:
            break
        }
        return result!
    }
    
    func getCategoryImage() -> String {
        var result: String?
        switch id {
        case 0:
            result = maraisCategory
            break
        case 1:
            result = martinCategory
            break
        case 2:
            result = montmartreCategory
            break
        default:
            break
        }
        return result!
    }
    
    func getVideoURLWithSound() -> String {
        var result: String?
        switch id {
        case 0:
            result = maraisWSVideoURL
            break
        case 1:
            result = canalWSVideoURL
            break
        case 2:
            result = montmartreWSVideoURL
            break
        default:
            break
        }
        return result!
    }
    
    func getVideoURLWithoutSound() -> String {
        var result: String?
        switch id {
        case 0:
            result = maraisWOVideoURL
            break
        case 1:
            result = canalWOVideoURL
            break
        case 2:
            result = montmartreWOVideoURL
            break
        default:
            break
        }
        return result!
    }
    
    func getLocations() -> [[Properties]] {
        var result: [[Properties]]?
        switch id {
        case 0:
            result = locations.getAllMaraisLocations()
            break
        case 1:
            result = locations.getAllMartinsLocations()
            break
        case 2:
            result = locations.getAllMaraisLocations()
            break
        default:
            break
        }
        return result!
    }
    
    func getCenter() -> Properties {
        var center: Properties?
        switch id {
        case 0:
            center = locations.getMaraisCenter()
            break
        case 1:
            center = locations.getMartinCenter()
            break
        case 2:
            center = locations.getMartinCenter()
            break
        default:
            break
        }
        return center!
    }
    
    func getCategoryDetail(category: Int) -> DetailProperties {
        var detailProperties = DetailProperties()
        detailProperties.url = allCategoryURLs[id][category]
        detailProperties.width = allCategoryWidths[id][category]
        detailProperties.height = allCategoryHeights[id][category]
        return detailProperties
    }
    
}

struct DetailProperties {
    var url = ""
    var width = 0
    var height = 0
}

