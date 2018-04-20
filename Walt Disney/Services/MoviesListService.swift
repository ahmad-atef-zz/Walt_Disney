//
//  MoviesListService.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation

// Extract functionality and wrap it in a protocol declaration.
protocol MovieDataSource {
    func listMovies (onSuccess: ([Movie]) -> (), onFail: (String) -> ())
}

// Concrete MovieDataSource
class APIMoviesListDataSource : MovieDataSource{
    private var movies : [Movie] = []
    func listMovies (onSuccess: ([Movie]) -> (), onFail: (String) -> ()){
    }
}


class MovieListService {
    private var dataSource: MovieDataSource?
    private var resultMovies: [Movie] = []

    init(dataSource: MovieDataSource?) {
        self.dataSource = dataSource
    }
    
    func listMovies() -> [Movie]? {
        self.dataSource?.listMovies(onSuccess: { movies in
            self.resultMovies = movies
        }, onFail: { error in})
        return resultMovies
    }
}
