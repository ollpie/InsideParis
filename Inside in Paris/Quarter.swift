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
    let montmartreWOVideoURL: String = "Montmartre_ohne"
    let montmartreBars: String = "bars_montmartre"
    let montmartreCafes: String = "cafes_montmartre"
    let montmartreCulture: String = "kultur_montmartre"
    let montmartreRestaurants: String = "restaurants_montmartre"
    let montmartreShopping: String = "shopping_montmartre"
    let montmartreLocal: String = "local_montmartre"
    let montmartreCategoryURLs: [String]
    let montmartreCategoryWidth: [Int]
    let montmartreCategoryHeight: [Int]
    
    let allCategoryURLs: [[String]]
    let allCategoryWidths: [[Int]]
    let allCategoryHeights: [[Int]]
    
    let locations: Location
    var quarterLocations: [[Properties]]?
    
    //index 0 = bars, 1 = culture, 2 = shopping, 3 = restaurants, 4 = bars, 5 = local report
    let quarterCategoryHeights = [3, 3, 3, 3, 3, 5]
    //index 0 = bars, 1 = culture, 2 = shopping, 3 = restaurants, 4 = bars, 5 = local report
    let maraisWidth = [4, 4, 5, 4, 3, 1]
    //index 0 = bars, 1 = culture, 2 = shopping, 3 = restaurants, 4 = bars, 5 = local report
    let canalWidth = [4, 5, 5, 4, 4, 1]
    //index 0 = bars, 1 = culture, 2 = shopping, 3 = restaurants, 4 = bars, 5 = local report
    let montmartreWidth = [4, 4, 5, 4, 4, 1]
    let locationAmount: Int = 4
    
    var id: Int
    
    init(id: Int) {
        self.id = id
        maraisCategoryURLs = [maraisCafes, maraisCulture, maraisShopping, maraisRestaurants, maraisBars, maraisLocal]
        canalCategoryURLs = [canalCafes, canalCulture, canalShopping, canalRestaurants, canalBars, canalLocal]
        montmartreCategoryURLs = [montmartreCafes, montmartreCulture, montmartreShopping, montmartreRestaurants, montmartreBars, montmartreLocal]
        maraisCategoryWidth = maraisWidth
        canalCategoryWidth = canalWidth
        montmartreCategoryWidth = montmartreWidth
        maraisCategoryHeight = quarterCategoryHeights
        canalCategoryHeight = quarterCategoryHeights
        montmartreCategoryHeight = quarterCategoryHeights
        allCategoryURLs = [maraisCategoryURLs, canalCategoryURLs, montmartreCategoryURLs]
        allCategoryWidths = [maraisCategoryWidth, canalCategoryWidth, montmartreCategoryWidth]
        allCategoryHeights = [maraisCategoryHeight, canalCategoryHeight, montmartreCategoryHeight]
        
        locations = Location()
    }
    
    func getWidths(locations: [[Properties]]) -> [Int] {
        var result: [Int] = []
        for i in 0...locations.count {
            result.append(locations[i].count)
        }
        return result
    }
    
    func getCategoryAndPage(name: String) -> [Int] {
        var result: [Int]!
        for i in 0...locationAmount {
            for j in 0...(quarterLocations?[i].count)!-1 {
                if quarterLocations?[i][j].name == name {
                    result = [i, j+1]
                }
            }
        }
        return result
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

        switch id {
        case 0:
            quarterLocations = locations.getAllMaraisLocations()
            break
        case 1:
            quarterLocations = locations.getAllMartinsLocations()
            break
        case 2:
            quarterLocations = locations.getAllMontmartreLocations()
            break
        default:
            break
        }
        return quarterLocations!
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
            center = locations.getMontmartreCenter()
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

