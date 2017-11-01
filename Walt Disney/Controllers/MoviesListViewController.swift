//
//  ViewController.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/1/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import UIKit

class MoviesListViewController: UIViewController {


    //MARK: - Proprties -
    let dataModel : MoviesList = MoviesListDataModel()

    //MARK: - View Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        listMovies()
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

