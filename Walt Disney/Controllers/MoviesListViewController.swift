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
    private let allViews: [UIView] = [UIView(frame: .zero),UIView(frame: .zero),UIView(frame: .zero)]
    private let movieCell = MovieCell()
    private let movie = try! Movie("Movie.json".contentOfFile())

    //MARK: - View Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
//        setupThreeViews()
//        setupThreeViewsConstraints()
        setupMovieCellView()
        setupMovieCellConstraints()

    }
    
    func print() {
        print("I'm back 🎉🤘🚀")
    }

    private func setupThreeViews() {
        for view in allViews {
            view.backgroundColor = .random
            self.view.addSubview(view)
        }
    }
    
    private func setupThreeViewsConstraints() {
        setupThreeEquallySideBySideView()
    }

    private func setupMovieCellView() {
        movieCell.backgroundColor = .random
        view.addSubview(movieCell)
        movieCell.configure(data: movie)
    }

    private func setupMovieCellConstraints() {
        let margins = self.view.layoutMarginsGuide
        movieCell.translatesAutoresizingMaskIntoConstraints = false

        movieCell.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor).isActive = true
        movieCell.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        movieCell.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        movieCell.heightAnchor.constraint(equalToConstant: 100.0).isActive = true
    }
    
    private func setupThreeEquallySideBySideView() {
        let firstView = allViews[0]
        let secondView = allViews[1]
        let thirdView = allViews[2]
        let margins = self.view.layoutMarginsGuide  // |----|

        firstView.translatesAutoresizingMaskIntoConstraints = false
        secondView.translatesAutoresizingMaskIntoConstraints = false
        thirdView.translatesAutoresizingMaskIntoConstraints = false

        firstView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8).isActive = true
        secondView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8).isActive = true
        thirdView.topAnchor.constraint(equalTo: topLayoutGuide.bottomAnchor, constant: 8).isActive = true
        
        firstView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8).isActive = true
        secondView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8).isActive = true
        thirdView.bottomAnchor.constraint(equalTo: bottomLayoutGuide.topAnchor, constant: -8).isActive = true
        
        firstView.leadingAnchor.constraint(equalTo: margins.leadingAnchor).isActive = true
        firstView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor).isActive = true
        secondView.trailingAnchor.constraint(equalTo: thirdView.leadingAnchor).isActive = true
        thirdView.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        
        firstView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 1.0).isActive = true
        thirdView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 1.0).isActive = true
        
        firstView.heightAnchor.constraint(equalTo: secondView.heightAnchor, multiplier: 2.0).isActive = true
        thirdView.heightAnchor.constraint(equalTo: secondView.heightAnchor, multiplier: 0.5).isActive = true
    }
}


