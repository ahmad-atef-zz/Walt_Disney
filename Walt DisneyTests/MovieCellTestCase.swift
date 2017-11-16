//
//  MovieCellTestCase.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/5/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import XCTest
import FBSnapshotTestCase
@testable import Walt_Disney

class MovieCellTestCase: FBSnapshotTestCase {

    let movieView : MovieCell = {
        let view = MovieCell()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    override func setUp() {
        super.setUp()
        self.recordMode = false
    }

    func testMovieWithTitleOnly() {
        let backgroundView = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 100))
        backgroundView.addSubview(movieView)

        movieView.widthAnchor.constraint(equalTo: backgroundView.widthAnchor).isActive = true
        movieView.topAnchor.constraint(equalTo: backgroundView.topAnchor).isActive = true
        movieView.leadingAnchor.constraint(equalTo: backgroundView.leadingAnchor).isActive = true
        movieView.trailingAnchor.constraint(equalTo: backgroundView.trailingAnchor).isActive = true
        movieView.heightAnchor.constraint(equalTo: backgroundView.heightAnchor).isActive = true

        FBSnapshotVerifyView(movieView)
    }
}
