//
//  MovieServiceTests.swift
//  Walt DisneyTests
//
//  Created by Ahmad Atef on 08.03.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import XCTest
@testable import Walt_Disney

class MovieServiceTests: XCTestCase {
    var movieServiceUnderTest : MovieListService?
    
    override func setUp() {
        super.setUp()
        let mockedDataSource = MockMovieDataSource()
        self.movieServiceUnderTest = MovieListService(dataSource: mockedDataSource)
    }
    
    func testMovieServiceIsNotEmpty() {
        if let movies = movieServiceUnderTest?.listMovies(){
            XCTAssertFalse(movies.count == 0)
        }
    }
}

private class MockMovieDataSource : MovieDataSource {
    
    var mockedMoviesList : Movies?
    let moviesListJsonFile = "MoviesList.json".contentOfFile()
    
    func listMovies(onSuccess: ([Movie]) -> (), onFail: (String) -> ()) {
        self.mockedMoviesList = try? Movies(moviesListJsonFile)
        if let loadedMoveis = self.mockedMoviesList?.movies{
            onSuccess(loadedMoveis)
        }
    }
    
    
}
