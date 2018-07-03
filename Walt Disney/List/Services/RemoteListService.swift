//
//  RemoteListService.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 03.07.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import Foundation

class RemoteListService: MovieListService {
    var movieListing: MovieListing
    init(movieListing: MovieListing) {
        self.movieListing = movieListing
    }
    func list(completion: @escaping () -> Void) {

    }
}

class RemoteMoviesListing: MovieListing {

    var movies: [Movie] = []

    func listMovies(onSuccess: @escaping ([Movie]) -> (), onFail: (String) -> ()) {
    }

    func didLoadMoviesSuccessfully() -> Bool {
        return movies.count > 0
    }
}
