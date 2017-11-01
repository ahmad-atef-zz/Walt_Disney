//
//  Movie.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation


enum Genres {
    case Carton,Drama, Romance
}

struct Movie {
    let name : String
    let imageCover : String
    let genres : [Genres]
    let rating : Double
    let story : String
    let releaseDate : String


    init(name : String, imageCover : String, genres : [Genres], rating : Double, story : String, releaseDate : String) {
        self.name = name
        self.imageCover = imageCover
        self.genres = genres
        self.rating = rating
        self.story = story
        self.releaseDate = releaseDate
    }
}
