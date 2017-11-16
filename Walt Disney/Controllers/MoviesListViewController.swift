//
//  ViewController.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController {


    let movieView : MovieCell = {
        let view = MovieCell()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
        return view
    }()

    //MARK: - Proprties -
    let dataModel : MoviesList = MoviesListDataModel()

    //MARK: - View Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        applyContstraint()
    }

    func setupView(){
        self.view.addSubview(movieView)
    }
    func applyContstraint() {
        movieView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        movieView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        movieView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        movieView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        movieView.heightAnchor.constraint(equalToConstant: 200).isActive = true
    }

    //MARK: - Functions -
    func listMovies() {
        dataModel.listMovies(onSuccess: { (movies) in
            print(movies.count)
        }) { (error) in
            print(error)
        }
    }
}

