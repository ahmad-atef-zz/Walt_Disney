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
