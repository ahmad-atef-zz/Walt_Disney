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
    var listingService: MovieListService!
    
    override func setUp() {
        super.setUp()
        let mockedListingService = MockedMoviesListing()
        listingService = MockedMovieListService(movieListing: mockedListingService)
    }

    func testMovieListServiceShouldLoadDataForAsync() {
        let exp = expectation(description: "Listing movie service expectation")

        listingService.list {
            exp.fulfill()
            XCTAssertTrue(self.listingService.movieListing.didLoadMoviesSuccessfully())
        }

        waitForExpectations(timeout: 3, handler: nil)
    }

}

class MockedMovieListService: MovieListService {

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

fileprivate class MockedMoviesListing : MovieListing {
    var movies: [Movie] = []

    func listMovies (onSuccess: @escaping ([Movie]) -> (), onFail: (String) -> ()){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let movie1 = try! Movie("Movie.json".contentOfFile())
            let movie2 = try! Movie("Movie.json".contentOfFile())
            self.movies.append(contentsOf: [movie1,movie2])
            onSuccess(self.movies)
        }
    }
    func didLoadMoviesSuccessfully() -> Bool {
        return movies.count > 0
    }
}
