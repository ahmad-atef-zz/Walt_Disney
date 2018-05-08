//
//  MovieCell.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/5/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import UIKit
import Foundation

class MovieCell: UIView,GenericCell{

    // Private Properties.
    fileprivate let movieTitle = UILabel()
    fileprivate let movieCoverImage = UIImageView()
    //private let rating : UIRating = UIRating()


    // Initializers.
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupSubViews()
        addConstraints()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func configure(data: Movie) {
        movieTitle.text = data.title
        if let movieImageURL = URL(string: data.imageCover){
            movieCoverImage.download(from: movieImageURL,placeholder: moviceCellPlaceholderImage)
        }
    }

    private func setupSubViews() {
        addSubview(movieTitle)
        addSubview(movieCoverImage)
    }

    private func addConstraints(){
        movieTitle.translatesAutoresizingMaskIntoConstraints = false
        movieCoverImage.translatesAutoresizingMaskIntoConstraints = false

        //let margins = self.layoutMarginsGuide

        movieTitle.topAnchor.constraint(equalTo: topAnchor).isActive = true
        movieTitle.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        movieTitle.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true

        movieCoverImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        movieCoverImage.trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
        movieCoverImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        movieCoverImage.leadingAnchor.constraint(equalTo: movieTitle.trailingAnchor, constant: 8.0).isActive = true

        movieTitle.widthAnchor.constraint(equalTo: movieCoverImage.widthAnchor, multiplier: 2.1).isActive = true
        movieTitle.heightAnchor.constraint(equalTo: movieCoverImage.heightAnchor, multiplier: 1.0).isActive = true
    }
}
