//
//  UIExtentions.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 11/5/17.
//  Copyright © 2017 Ahmad Atef. All rights reserved.
//

import UIKit
import Foundation


extension UIImageView{
    convenience init? (imageName : String, contentMode : UIViewContentMode = .scaleToFill){
        guard let image = UIImage(named: imageName) else {
            return nil
        }
        self.init(image: image)
        self.contentMode = contentMode
        translatesAutoresizingMaskIntoConstraints = false
    }
}


//        let topAnchor = testingView.topAnchor.constraint(equalTo: self.view.topAnchor)
//        let bottomAnchor = testingView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
//        let rightAnchor = testingView.rightAnchor.constraint(equalTo: self.view.rightAnchor)
//        let leftAnchor = testingView.leftAnchor.constraint(equalTo: self.view.leftAnchor)
//
//        let allConstraints : [NSLayoutConstraint] = [topAnchor,leftAnchor,bottomAnchor,rightAnchor]
//        NSLayoutConstraint.activate(allConstraints)


//        let centerXConstraint = testingView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor)
//        let centerYConstraint = testingView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor )
//        let widthConstrint = testingView.widthAnchor.constraint(equalToConstant: 150.0)
//        let heightConstrint = testingView.heightAnchor.constraint(equalToConstant: 150.0)
//
//        let allConstrints = [centerXConstraint, centerYConstraint,widthConstrint,heightConstrint]
//        NSLayoutConstraint.activate(allConstrints)

//
//        let widthConstrint = testingView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.6)
//        let heightConstrint = testingView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.75)
//        let trailingConstrint = testingView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor)
//        let bottomConstrint = testingView.bottomAnchor.constraint(equalTo: self.bottomLayoutGuide.topAnchor)
//        let allConstrints = [trailingConstrint, bottomConstrint,widthConstrint,heightConstrint]
//
//        NSLayoutConstraint.activate(allConstrints)
