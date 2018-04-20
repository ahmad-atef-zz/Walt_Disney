//
//  RatingTests.swift
//  Walt DisneyTests
//
//  Created by Ahmad Atef on 02.03.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import XCTest
@testable import Walt_Disney

class RatingTests: XCTestCase {
    
    var ratingUnderTest: Rating!
    
    override func setUp() {
        super.setUp()
        let ratingJson = "Rating.json".contentOfFile()
        self.ratingUnderTest = try! Rating(ratingJson)
    }
    
    func testRatingAvergageShouldNotBeGraterThanRatingMax() {
        let ratingAverage = self.ratingUnderTest.average
        let ratingMax = Double(self.ratingUnderTest.max)
        XCTAssertLessThanOrEqual(ratingAverage, ratingMax, "Rating Avergage Should Not Be Grater Than Rating Max!")
    }
}
