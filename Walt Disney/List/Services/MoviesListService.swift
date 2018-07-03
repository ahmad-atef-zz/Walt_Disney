//
//  MoviesListService.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation

// Extract functionality and wrap it in a protocol declaration.
protocol MovieListing {
    var movies: [Movie] { get set }
    func listMovies (onSuccess: @escaping ([Movie]) -> (), onFail: (String) -> ())
    func didLoadMoviesSuccessfully() -> Bool
}

protocol MovieListService {
    var movieListing: MovieListing { get }
    func list(completion: @escaping () -> Void)
}

class ConcretMovieListService: MovieListService {

    var movieListing: MovieListing

    init(movieListing: MovieListing) {
        self.movieListing = movieListing
    }

    func list(completion: @escaping () -> Void) {
        self.movieListing.listMovies(onSuccess: { (movies) in
            self.movieListing.movies = movies
            completion()
        }) { (error) in
            completion()
        }
    }
}
