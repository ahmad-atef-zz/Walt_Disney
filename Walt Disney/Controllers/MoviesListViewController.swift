//
//  ViewController.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import UIKit
import SwifterSwift

class MoviesListViewController: UIViewController {

    //MARK: - Proprties -
    private let movieCell = MovieCell()
    private let movie = try! Movie("Movie.json".contentOfFile())

    private let warningCell = WarningCell()
    let advertisement = Advertisement(url: URL(string: "www.apple.com")!)

    //MARK: - View Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupMovieCellView()
        setupAdvertisemtnsCell()
        setupMovieCellConstraints()
        setupAdsCellConstraints()


    }

    private func setupMovieCellView() {
        movieCell.backgroundColor = .random
        view.addSubview(movieCell)
        movieCell.configure(data: movie)
    }
    private func setupAdvertisemtnsCell() {
        warningCell.backgroundColor = .random
        view.addSubview(warningCell)
        warningCell.configure(data: "Fuck You 🖕")
    }

    private func setupAdsCellConstraints() {
        let margins = self.view.layoutMarginsGuide
        warningCell.translatesAutoresizingMaskIntoConstraints = false

        warningCell.topAnchor.constraint(equalTo: movieCell.bottomAnchor).isActive = true
        warningCell.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        warningCell.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        warningCell.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
    }

    private func setupMovieCellConstraints() {
        let margins = self.view.layoutMarginsGuide
        movieCell.translatesAutoresizingMaskIntoConstraints = false

        movieCell.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        movieCell.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        movieCell.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        movieCell.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
    }
}


