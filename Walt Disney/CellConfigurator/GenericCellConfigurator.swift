//
//  GenericCellConfigurator.swift
//  Walt Disney
//
//  Created by Ahmad Atef on 08.05.18.
//  Copyright © 2018 Ahmad Atef. All rights reserved.
//

import Foundation
import UIKit

protocol GenericCellConfigurator {
    var cellIdentefier: String { get }
    func confgiure(cell: UIView)
}
