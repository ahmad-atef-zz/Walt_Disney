//
//  MovieCell.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/5/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import UIKit
import Foundation

class MovieCell: UIView {

    private let movieNameLabel = UILabel()
    private let movieImageView = UIImageView()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
        addConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func configure(for movie: Movie) {

    }

    private func setupSubViews() {
        movieNameLabel.translatesAutoresizingMaskIntoConstraints = false
        movieNameLabel.text = "TESTING DATA"
        movieNameLabel.textColor = .yellow
        movieNameLabel.backgroundColor = .green
        movieNameLabel.textAlignment = .center
        addSubview(movieNameLabel)
    }

    private func addConstraints(){
        movieNameLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        movieNameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        movieNameLabel.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.6).isActive = true
        movieNameLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.75).isActive = true
    }
}
