//
//  Movie.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation
import SwiftyJSON

enum Genres : Int{
    case Carton,Drama, Romance
}

struct Movie {
    let name : String
    let imageCover : String
    let genres : Genres
    let rating : Double
    let story : String
    let releaseDate : String


    init(name : String, imageCover : String, genres : Genres, rating : Double, story : String, releaseDate : String) {
        self.name = name
        self.imageCover = imageCover
        self.genres = genres
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
        genres = Genres(rawValue: json["rating"].intValue)!
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

