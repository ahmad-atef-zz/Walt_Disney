//
//  Movie.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation
import SwiftyJSON

enum Genre : String{
    case Carton = "catroon",Drama = "drama", Romance = "romance", Action = "action"
}

struct Movie {
    let name : String
    let imageCover : String
    let rating : Double
    let genres : Genre
    let story : String
    let releaseDate : String


    // Designated Intalizer.
    init(name : String, imageCover : String, genre : Genre, rating : Double, story : String, releaseDate : String) {
        self.name = name
        self.imageCover = imageCover
        self.genres = genre
        self.rating = rating
        self.story = story
        self.releaseDate = releaseDate
    }

    init?(withJSON json : JSON?){
        guard let json = json else {
            return nil
        }
        name = json["name"].stringValue
        imageCover = json["imageCover"].stringValue
        genres = Genre(rawValue: json["genre"].stringValue)!
        rating = json["rating"].doubleValue
        story = json["stroy"].stringValue
        releaseDate = json["releaseDate"].stringValue
    }
}


//guard let fuelTypeArrayJson = json["rawAllFuelTypes"].array else {
//    self.fuelTypes = nil
//    return
//}
//var fuelTypes: [Int] = []
//for fuelType in fuelTypeArrayJson {
//    if let fuel = fuelType.int {
//        fuelTypes.append(fuel)
//    }
//}
//self.fuelTypes = fuelTypes

