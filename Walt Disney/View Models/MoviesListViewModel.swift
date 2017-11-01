//
//  MoviesListViewModel.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import Foundation

protocol MoviesList {
    func listMovies (onSuccess: ([Movie]) -> (), onFail: (String) -> ())
    func numberOfMovies() -> Int
    func movieAtIndex(index: Int) -> Movie
}

class MoviesListDataModel : MoviesList{

    func sayHello(name: String) -> String {
        return "Hello \(name)"
    }

    private var movies : [Movie] = [Movie(name: "X", imageCover: "", genres: .Carton, rating: 4.5, story: "asdasd", releaseDate: "123123"),
                                    Movie(name: "Y", imageCover: "", genres: .Carton, rating: 4.5, story: "asdasd", releaseDate: "123123"),
                                    Movie(name: "Z", imageCover: "", genres: .Carton, rating: 4.5, story: "asdasd", releaseDate: "123123")]

    func listMovies (onSuccess: ([Movie]) -> (), onFail: (String) -> ()){
        onSuccess(movies)
    }

    func numberOfMovies() -> Int{
        return movies.count
    }

    func movieAtIndex(index: Int) -> Movie{
        return movies[index]
    }
}
