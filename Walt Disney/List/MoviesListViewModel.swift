//
//  ListViewModel.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 03.07.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import UIKit


class MoviesListViewModel {

    let movieCellConfigurator = TableViewCellConfigurator<MovieCell,Movie>(item: try! Movie("Movie.json".contentOfFile()))
    let warningCellConfigurator = TableViewCellConfigurator<WarningCell, String>(item: "Gameeelaaa")
    let dummyCellConfigurator = TableViewCellConfigurator<DummyCell, DummyModel>(item: DummyModel(name: "Fuck"))
}


class DummyCell: UIView, GenericCell {
    func configure(data: DummyModel) {
    }
}

struct DummyModel {
    let name: String
}
